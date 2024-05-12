module BossCellRequireKey
    ENTRY_QUESTION = "Essayer la clef de la prison sur la serrure ?"
    ENTRY_MESSAGE = [
        "Vous utilisez la clef de la prison afin d'ouvrir la grande porte.",
        "Vous poussez sur la porte, ses gonds rouillés vous donnant du retord.",
        "En y mettant toutes vos forces, vous parvenez néanmoins à forcer la porte ouverte.",
        "",
        "Lorsque vous pénétrez dans ce qui semble être une cellule de prison,",
        "Vous pouvez voir au fond de la salle obscure un chevalier à l'armure endomagée par les batailles et l'age",
        "A peine couverte par les fins lambeau de ce qui devait être un noble surcôt."
    ]
    NO_ENTRY_MESSAGE = [
        "Vous décidez qu'il ne vaut probablement mieux ne pas prendre le risque d'ouvrir la porte",
        "Et décidez donc de revenir sur vos pas."
    ]
    IMPOSSIBLE_ENTRY_MESSAGE = [
        "Lorsque vous tentez de l'ouvrir celle-ci vous resiste, semblant être fermée à clef.",
        "",
        "Vous retournez sur vos pas."
    ]
    REQUIRED_ITEMS = [PrisonKey]
    ONCE = true
end
