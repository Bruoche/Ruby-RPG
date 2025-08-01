class StatusHandler
    def initialize
        @statuses = Array.new
    end

    def get_save_data
        statuses = ''
        for status in @statuses
            statuses += status.get_save_data + '; '
        end
        return statuses
    end

    def load(statuses)
        if statuses != nil
            for status_data in statuses.split('; ')
                status = Status.load(status_data)
                @statuses.append(status)
            end
        end
    end

    def have?(searched_status)
        for status in @statuses
            if status.class == searched_status
                return true
            end
        end
        return false
    end

    def get_icons
        icons = ''
        for status in @statuses
            icons += status.icon
        end
        return icons
    end

    def get_descriptions
        descriptions = ""
        for status in @statuses
            descriptions += format(status.get_description)
        end
        return descriptions
    end

    def get_attack_effects
        attack_effects = []
        for status in @statuses
            for effect in status.get_effects
                attack_effects.append(effect)
            end
        end
        return attack_effects
    end

    def add(new_status)
        already_have_it = false
        for status in @statuses
            if !already_have_it && (status.class == new_status.class)
                already_have_it = true
                status.append(new_status.length)
            end
        end
        if !already_have_it
            @statuses.append(new_status)
        end
    end

    def set(new_status)
        already_have_it = false
        for status in @statuses
            if !already_have_it
                if status.class == new_status.class
                    already_have_it = true
                    status.set_duration(new_status.length)
                end
            end
        end
        if !already_have_it
            @statuses.append(new_status)
        end
    end

    def remove(status)
        @statuses.delete_if do |current_status|
            current_status.class == status
        end
    end

    def reduce_of(status, amount)
        @statuses.delete_if do |current_status|
            if current_status.class == status
                current_status.reduce_duration_of(amount)
                current_status.depleted?
            end
        end
    end

    def end_of_turn_actions(host)
        for status in @statuses
            status.end_of_turn_action(host)
            tick_down(status)
        end
    end

    def tick_down(status)
        status.tick_down
        if status.depleted?
            @statuses.delete_at(@statuses.index(status))
        end
    end
end
