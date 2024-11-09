class DevNote < Item
    NAME = "note d'au revoir"
    SOUND = "bandage"
    USABLE_ON_OTHERS = false
    DROP_CHANCE_SCALABLE = false

    def initialize
        @value = 0
    end

    def get_description
        return "merci d'avoir joué"
    end

    def use(target, user)
        puts "Vous ouvrez le petit papier soigneusement plié, et en lisez le contenu : "
        puts
        puts
        puts "      Félicitation !"
        puts "    Vous avez terminé la démo de Ruby Dungeon et battu son boss."
        puts "    J'éspère sincérement que vous avez aimé mon jeu, et vous remercie d'avoir joué jusqu'à sa complétion."
        puts
        puts "     Libre à vous de faire ce que bon vous semble dans les donjons maintenant, il n'y a pas de secrets suppémentaires à trouver."
        puts "   Le jeu complet sortira d'ici, j'espère, quelques mois et votre sauvegarde sera toujours compatible avec ce dernier."
        puts "   (il faudra simplement que vous mettiez le dossier \"save\" dans les dossiers du jeu complet quand il sortira)."
        puts
        puts "     En espérant que ça ne soit qu'un Au revoir,"
        puts "       - Bruoche"
        puts
        Narrator.pause_text
        return !Player::ACTED
    end
end
