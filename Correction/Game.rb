require './Player'
require './Monster'

module States
    SNEAKING = 0
    FIGHTING = 1
    DEAD = nil
end

module BaseStats
    BASE_HEALTH = 10
    BASE_DAMAGE = 5
    BASE_HEAL = 0
end

class Game
    def initialize()
        @player = Player.new(BaseStats::BASE_HEALTH, BaseStats::BASE_DAMAGE, BaseStats::BASE_HEAL)
        @state = States::SNEAKING
        Narrator.introduction
        while (@state != States::DEAD)
            puts
            case @state
            when States::SNEAKING
                generate_monster
                Narrator.describe_room(@player.get_full_status, @monster.get_description)
                propose_combat()
            when States::FIGHTING
                fight()
            end
        end
    end
    
    def propose_combat()
        case Narrator.ask_if_fight
        when "1"
            Narrator.start_fight
            @state = States::FIGHTING
        when "2"
            Narrator.avoid_fight
        else
            Narrator.unsupported_choice_error
            propose_combat
        end
    end
    
    def generate_monster()
        monster_health = rand(BaseStats::BASE_HEALTH..(BaseStats::BASE_HEALTH + @player.get_level))
        monster_damage = rand(BaseStats::BASE_DAMAGE..(BaseStats::BASE_DAMAGE + @player.get_level))
        @monster = Monster.new(monster_health, monster_damage)
    end
    
    def fight()
        player_turn
        if (@monster.is_dead)
            victory
        else
            monster_turn
        end
    end
    
    def player_turn()
        case Narrator.ask_fight_action(@player.get_status, @monster.get_description)
        when "1"
            puts
            @monster.hurt(@player.attack)
        when "2"
            puts
            @player.heal
        else
            Narrator.unsupported_choice_error
            player_turn
        end
    end
    
    def monster_turn()
        @player.hurt(@monster.attack)
        if (@player.is_dead)
            Narrator.death_scene
            @state = States::DEAD
        end
    end
    
    def victory()
        Narrator.victory_scene(@monster.get_score)
        @player.get_xp(@monster.get_score)
        @player.patch_up
        Narrator.sneaking_transition()
        @state = States::SNEAKING
    end
end

class Narrator
    def self.introduction
        puts
        puts "          DEBUT DU JEU"
        puts
        puts "En quête de trésors et de connaissances, vous décidez de commencer votre périple dans un donjon ancien réputé sans fond."
        puts "Armé.e de votre courage et d'une épée, vous entrez dans la première pièce consituant la grande batisse sombre."
        puts
        print "  (ecrivez n'importe quoi pour continuer...) >> "
        gets
    end

    def self.describe_room(player_status, monster_description)
        puts
        puts player_status
        puts
        puts "Lorsque vous entrez dans la pièce obscure, vous voyez un #{monster_description}."
    end

    def self.start_fight()
        puts
        puts "Vous vous jettez sur le monstre se tenant face à vous."
    end

    def self.avoid_fight()
        puts
        puts "Peu confiant.e en votre capacité à battre le monstre, vous avancez discretement vers la suite du donjon."
    end

    def self.death_scene()
        puts
        puts "Malheureusement, l'attaque du monstre a raison de vous, et vous vous effondrez au sol."
    end

    def self.victory_scene(xp)
        puts
        puts "Victoire ! Le monstre meurt et vous laisse #{xp} points d'expérience."
    end

    def self.sneaking_transition()
        puts "Vous continuez votre route dans le donjon et avancez vers la pièce suivante."
    end

    def self.ask_if_fight()
        puts "Que voulez-vous faire ?"
        puts "      1) Combattre"
        puts "      2) Fuir"
        return user_input
    end

    def self.ask_fight_action(player_status, monster_description)
        puts
        puts player_status
        puts "Vous faites face au #{monster_description}."
        puts
        puts "Que voulez-vous faire ?"
        puts "      1) Attaquer"
        puts "      2) Se soigner"
        return user_input
    end

    def self.ask_continue()
        puts "Réessayer ?"
        puts "      1) Oui"
        puts "      2) Non"
        return user_input
    end

    def self.unsupported_choice_error()
        puts
        puts "Choix invalide, Veuillez simplement écrire le chiffre correspondant à une des options proposées."
    end

    private

    def self.user_input()
        puts
        print "  >> "
        answer = gets.chomp
        puts puts puts puts puts
        return answer
    end
end

def ask_continue()
    case Narrator.ask_continue
    when "1"
        puts
        return true
    when "2"
        puts
        return false
    else
        Narrator.unsupported_choice_error
        ask_continue()
    end
end

wanna_play = true
while (wanna_play)
    Game.new()
    wanna_play = ask_continue()
end