class PrisonKey
    def initialize()
    end

    def get_name()
        return "une clef"
    end

    def get_description()
        return "une clef (doit pouvoir ouvrir une porte quelque part)"
    end

    def is_destroyed()
        return false
    end

    def use(target)
        puts "Vous ne savez pas comment utiliser cet objet..."
    end

    def get_save_data()
        return "PrisonKey"
    end
end
