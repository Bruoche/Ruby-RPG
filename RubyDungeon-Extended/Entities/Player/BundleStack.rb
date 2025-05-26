class BundleStack
    NO_ITEM_CHOSEN = nil

    def initialize(bundle_class)
        @bundles = []
        @class = Object.const_get(bundle_class.to_s)
    end

    def get_save_data
        items = ''
        for bundle in @bundles
            items += bundle.get_save_data
        end
        return items
    end

    def contains_class?(item_class)
        for bundle in @bundles
            if bundle.get_item.class == item_class
                return true
            end
        end
        return false
    end

    def contains?(item)
        for bundle in @bundles
            if bundle.contains?(item)
                return true
            end
        end
        return false
    end

    def depleted?
        return @bundles.size == 0
    end

    def usable_on_others?
        if (@bundles.size <= 0)
            return false
        end
        return @bundles[0].usable_on_others?
    end

    def get_total_amount
        total = 0
        for bundle in @bundles
            total += bundle.get_quantity
        end
        return total
    end

    def get_quantity(item)
        for bundle in @bundles do
            if bundle.contains?(item)
                return bundle.get_quantity
            end
        end
        return 0
    end

    def get_name
        if (@bundles.size <= 0)
            return ''
        end
        if (@bundles.size == 1)
            return @bundles[0].get_name
        else
            suffix = Utils.get_string_numbering(get_total_amount)
            if suffix != ''
                suffix = ' ' + suffix
            end
            return Locale.get_localized(@class::PLURAL_NAME) + '...' + suffix
        end
    end

    def get_description
        if (@bundles.size <= 0)
            return ''
        end
        if (@bundles.size == 1)
            return @bundles[0].get_description
        else
            prefix = Utils.get_string_numbering(get_total_amount)
            if prefix != ''
                prefix = prefix + ' '
            end
            return prefix + Locale.get_localized(@class::PLURAL_NAME) + '...'
        end
    end

    def get_sellables
        sellable_bundles = []
        for bundle in @bundles
            if bundle.get_value > 0
                sellable_bundles.append(bundle)
            end
        end
        return sellable_bundles
    end

    def get_upgradable
        upgradables = []
        for bundle in @bundles
            if bundle.get_item.kind_of? Armor
                upgradables.append(bundle)
            end
        end
        return upgradables
    end

    def get_all
        return @bundles
    end

    def choose_bundle(player_name = Narrator::NO_NAME_DISPLAYED)
        if @bundles.size <= 0
            return NO_ITEM_CHOSEN
        end
        if @bundles.size == 1
            return @bundles[0]
        end
        bundle_index = Narrator.ask(LocaleKey::ASK_ITEM_IN_STACK, @bundles, -> (bundle) {to_string(bundle)}, player_name)
        if bundle_index == Narrator::RETURN_BUTTON
            return NO_ITEM_CHOSEN
        else
            return @bundles[bundle_index]
        end
    end

    def get_item(player)
        bundle = choose_bundle(player.get_name)
        if bundle != NO_ITEM_CHOSEN
            return bundle.get_item
        else
            return NO_ITEM_CHOSEN
        end
    end

    def use(target, user)
        bundle = choose_bundle(user.get_name)
        if bundle == NO_ITEM_CHOSEN
            used = false
        else
            used = bundle.use(target, user)
            if bundle.depleted?
                @bundles.delete_at(@bundles.index(bundle))
            end
        end
        return used
    end

    def item_class
        return @class
    end

    def set(bundles)
        @bundles = bundles
    end

    def append(new_bundle)
        for bundle in @bundles
            if bundle.contains?(new_bundle.get_item)
                bundle.add(new_bundle.get_quantity)
                return
            end
        end
        @bundles.append(new_bundle)
    end

    def remove(item, quantity = 1)
        for bundle in @bundles
            if bundle.contains?(item)
                removed_bundle = bundle.remove(quantity)
                if bundle.depleted?
                    @bundles.delete_at(@bundles.index(bundle))
                end
                return removed_bundle
            end
        end
        return NO_ITEM_CHOSEN
    end

    def list
        for bundle in @bundles
            Narrator.list(to_string(bundle))
        end
    end

    private

    def to_string(bundle)
        if bundle == Narrator::RETURN_BUTTON
            return Locale.get_localized(LocaleKey::GO_BACK)
        else
            return bundle.get_description
        end
    end
end
