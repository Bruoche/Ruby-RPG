require './RubyDungeon-Extended/DialogGenerator/DialogGenerator.rb'

KEY_COLUMN = 0
TRIGGER_COLUMN = 1
INTRO_COLUMN = 2
DIALOG_BUILDER = {
    "key" => -> (current_locale_key, row, locale) {return format("        LocaleKey::%s => [\"%s\"],\n", current_locale_key, DialogGenerator.format_trigger(row[TRIGGER_COLUMN]))},
    "txt" => -> (current_locale_key, row, locale) {
        text = format("        LocaleKey::%s => [\n", current_locale_key)
        current_column = INTRO_COLUMN + 1
        while row[current_column].to_s != "" do
            text = text + "            \"" + row[current_column].to_s + "\",\n"
            current_column += 1
        end
        return text + "        ],\n"
    },
    "intro" => -> (current_locale_key, row, locale) {
        if row[INTRO_COLUMN].to_s != ""
            return text = format("        LocaleKey::%s => \"%s\",\n", current_locale_key, row[INTRO_COLUMN])
        end
        return ""
    }
}

LOCALES = {
    "EN" => {},
    "FR" => {}
}

BASIC_FORMAT = {
    "" => DIALOG_BUILDER,
}

DIALOGS_TO_GENERATE = [
    "goblin_translator",
    "goblin_elder"
]

for npc in DIALOGS_TO_GENERATE do
    DialogGenerator.generate_dialogs_from(npc + "_dialogs", npc, BASIC_FORMAT, LOCALES)
end
