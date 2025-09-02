require './RubyDungeon-Extended/DialogGenerator/DialogGenerator.rb'

TRANSLATION_INDEX_NOUN = 0
TRANSLATION_INDEX_VERB = 2
GOBLIN_INDEX = 1
GOBLIN_TO_ENGLISH = {
    "key" => -> (current_locale_key, row, locale) {return format("        LocaleKey::%s => [\"%s\"],\n", current_locale_key, DialogGenerator.format_goblin_trigger(row[GOBLIN_INDEX]))},
    "txt" => -> (current_locale_key, row, locale) {
        conjugated_goblin = DialogGenerator.conjugate_goblin(row[GOBLIN_INDEX].to_s.strip.downcase)
        return format(
            locale[:gte],
            {
                key: current_locale_key,
                goblin_word: row[GOBLIN_INDEX].to_s.strip.capitalize,
                translated_noun: row[TRANSLATION_INDEX_NOUN].to_s.strip.downcase,
                translated_verb: row[TRANSLATION_INDEX_VERB].to_s.strip.capitalize,
                goblin_word_past: conjugated_goblin[:past].capitalize,
                goblin_word_future: conjugated_goblin[:future].capitalize
            }
        )
    }
}
ENGLISH_TO_GOBLIN_NOUNS = {
    "key" => -> (current_locale_key, row, locale) {return format("        LocaleKey::%s => [\"%s\"],\n", current_locale_key, DialogGenerator.format_trigger(row[TRANSLATION_INDEX_NOUN]))},
    "txt" => -> (current_locale_key, row, locale) {
        return format(
            locale[:etg_noun],
            {
                key: current_locale_key,
                goblin_word: row[GOBLIN_INDEX].to_s.strip.capitalize,
                human_word: row[TRANSLATION_INDEX_NOUN].to_s.strip.capitalize,
            }
        )
    },
}
ENGLISH_TO_GOBLIN_VERBS = {
    "key" => -> (current_locale_key, row, locale) {return format("        LocaleKey::%s => [\"%s\"],\n", current_locale_key, DialogGenerator.format_trigger(row[TRANSLATION_INDEX_VERB]))},
    "txt" => -> (current_locale_key, row, locale) {
        conjugated_goblin = DialogGenerator.conjugate_goblin(row[GOBLIN_INDEX].to_s.strip.downcase)
        return format(
            locale[:etg_verb],
            {
                key: current_locale_key,
                goblin_word: row[GOBLIN_INDEX].to_s.strip.capitalize,
                human_word: row[TRANSLATION_INDEX_VERB].to_s.strip.capitalize,
                goblin_word_past: conjugated_goblin[:past].capitalize,
                goblin_word_future: conjugated_goblin[:future].capitalize
            }
        )
    }
}

GOBLIN_TRANSLATIONS_LOCALISED = {
    "EN" => {
        :gte => "        LocaleKey::%<key>s => [\n            \"\\\"%<goblin_word>s\\\" means a %<translated_noun>s, or can also mean \\\"%<translated_verb>s\\\" as a verb.\",\n            \"When \\\"%<goblin_word>s\\\" is a verb, it can also appear as \\\"%<goblin_word_past>s\\\" or \\\"%<goblin_word_future>s\\\" for past and future.\"\n        ],\n",
        :etg_noun => "        LocaleKey::%<key>s => [\n            \"\\\"%<human_word>s\\\" can be said \\\"%<goblin_word>s\\\" in a goblin talk.\"\n        ],\n",
        :etg_verb => "        LocaleKey::%<key>s => [\n            \"\\\"%<human_word>s\\\" can be said \\\"%<goblin_word>s\\\" in a goblin talk, or also as \\\"%<goblin_word_past>s\\\" for a past or \\\"%<goblin_word_future>s\\\" for a future.\"\n        ],\n"
    },
    "FR" => {
        :gte => "        LocaleKey::%<key>s => [\n            \"\\\"%<goblin_word>s\\\" signifie un %<translated_noun>s, ou peux aussi signifier \\\"%<translated_verb>s\\\" comme verbe.\",\n            \"Quand \\\"%<goblin_word>s\\\" est un verbe, il peux également apparaître comme \\\"%<goblin_word_past>s\\\" ou \\\"%<goblin_word_future>s\\\" pour le passé et le future.\"\n        ],\n",
        :etg_noun => "        LocaleKey::%<key>s => [\n            \"\\\"%<human_word>s\\\" peux se dire \\\"%<goblin_word>s\\\" en parole gobline.\"\n        ],\n",
        :etg_verb => "        LocaleKey::%<key>s => [\n            \"\\\"%<human_word>s\\\" peux se dire \\\"%<goblin_word>s\\\" en parole gobline, ou avec \\\"%<goblin_word_past>s\\\" au passé ou \\\"%<goblin_word_future>s\\\" au futur.\"\n        ],\n"
    }
}

EN_GOBLIN_TRANSLATOR = {
    "_gte" => GOBLIN_TO_ENGLISH,
    "_etg_noun" => ENGLISH_TO_GOBLIN_NOUNS,
    "_etg_verb" => ENGLISH_TO_GOBLIN_VERBS
}

DialogGenerator.generate_dialogs_from("goblin_dictionnary", "goblin_translator", EN_GOBLIN_TRANSLATOR, GOBLIN_TRANSLATIONS_LOCALISED)
