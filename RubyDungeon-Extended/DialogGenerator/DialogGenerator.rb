require 'CSV'
require 'FileUtils'

class DialogGenerator
    BASE_PATH = "./RubyDungeon-Extended/DialogGenerator/"
    SOURCE_PATH = "source/"
    PATH = BASE_PATH + "result/"
    DEFAULT_LOCALE = "EN"
    VOICED_CONSONANTS = ["b", "d", "g"]
    VOICELESS_CONSONANTS = ["p", "t", "k"]
    FRICATIVE_CONSONANTS = ["r", "s"]
    CONSONANTS = VOICED_CONSONANTS + VOICELESS_CONSONANTS + FRICATIVE_CONSONANTS
    TONIC = ["ö", "ä", "ë", "ü"]
    O_COLUMN = ["ö", "o", "ü", "u"]
    A_COLUMN = ["ä", "a"]
    E_COLUMN = ["ë", "è", "e"]

    def self.generate_dialogs_from(path_to_csv, npc_name, dialogs_alts, locales)
        localized_sources = {}
        locale_files = {}
        files = []
        for locale in locales.keys do
            files.append(File.open(BASE_PATH + SOURCE_PATH + path_to_csv + "_" + locale.downcase + ".csv"))
            last_file = files[-1].read.force_encoding("iso-8859-1").encode('UTF-8', :invalid => :replace).split("\n")
            localized_sources[locale] = last_file
            locale_files[locale] = ",\n"
        end
        locale_keys = ""
        dialog_keys = ""
        dialog_file = ""
        last_file.each_index do |row_index|
            dialogs_alts.each do |alt_key, dialogs_formats|
                rows = {}
                for locale in locales.keys do
                    rows[locale] = localized_sources[locale][row_index].split(',')
                end
                base_dialog_key = format_key(rows[DEFAULT_LOCALE][TRANSLATION_INDEX_NOUN])
                dialog_key = ("translate_" + base_dialog_key).upcase + alt_key.upcase
                dialog_keys += format("    %s = '%s'\n", dialog_key, dialog_key.downcase)
                dialog_file += format("        Dialog.new(\n            DialogID::%s", dialog_key)
                dialogs_formats.each do |key_type, formatter|
                    base_key = "dial_" + npc_name + '_' + key_type + alt_key + '_' + base_dialog_key
                    key = base_key.upcase
                    locale_keys += format("    %s = :%s\n", key, base_key)
                    locales.each do |locale, localised_texts|
                        locale_files[locale] += formatter.call(key, rows[locale], localised_texts)
                    end
                    dialog_file += format(",\n            LocaleKey::%s", key)
                end
                dialog_file += "\n        ),\n"
            end
        end
        write(npc_name + "_locale_keys.rb", locale_keys)
        locale_files.each do |locale, locale_file|
            write(npc_name + "_locale_file_" + locale + ".rb", locale_file)
        end
        write(npc_name + "_dialog_ids.rb", dialog_keys)
        write(npc_name + "_dialogs.rb", dialog_file)
        for file in files do
            file.close
        end
    end

    def self.write(file_name, content)
        unless File.directory?(PATH)
            FileUtils.mkdir_p(PATH)
        end
        path = PATH + file_name
        file = File.open(path, "w")
        file.write(content)
        file.close
    end

    def self.format_key(text)
        text.downcase!
        text = text.split("(")[0]
        text.gsub! "\/", ' '
        text = text.strip
        text.gsub! " ", '_'
        text = text.squeeze('_')
        text.gsub! '�', ''
        text.gsub! '', ''
        text.gsub! '', ''
        text.gsub! '?', ''
        return text
    end

    def self.format_trigger(text)
        if text == nil
            text = ""
        end
        text.downcase!
        text = text.split("(")[0]
        if text == nil
            text = ""
        end
        text.gsub! "\/", ' '
        text = text.strip()
        text.gsub! ' ', '|'
        text = text.squeeze('|')
        text.gsub! '?', ''
        accentless = text.tr(
            "ÀÁÂÃÄÅàáâãäåĀāĂăĄąÇçĆćĈĉĊċČčÐðĎďĐđÈÉÊËèéêëĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤĥĦħÌÍÎÏìíîïĨĩĪīĬĭĮįİıĴĵĶķĸĹĺĻļĽľĿŀŁłÑñŃńŅņŇňŉŊŋÒÓÔÕÖØòóôõöøŌōŎŏŐőŔŕŖŗŘřŚśŜŝŞşŠšſŢţŤťŦŧÙÚÛÜùúûüŨũŪūŬŭŮůŰűŲųŴŵÝýÿŶŷŸŹźŻżŽž",
            "AAAAAAaaaaaaAaAaAaCcCcCcCcCcDdDdDdEEEEeeeeEeEeEeEeEeGgGgGgGgHhHhIIIIiiiiIiIiIiIiIiJjKkkLlLlLlLlLlNnNnNnNnnNnOOOOOOooooooOoOoOoRrRrRrSsSsSsSssTtTtTtUUUUuuuuUuUuUuUuUuUuWwYyyYyYZzZzZz"
        )
        if accentless != text
            text = text + '|' + accentless
        end
        return text
    end

    def self.format_goblin_trigger(text)
        text.downcase!
        text = text.split("(")[0]
        text.gsub! "\/", ' '
        text = text.strip()
        text.gsub! ' ', '|'
        text = text.squeeze('|')
        text.gsub! '?', ''
        conjugated = conjugate_goblin(text)
        return text + "|" + remove_accents(text) + '|' + conjugated[:past] + '|' + remove_accents(conjugated[:past]) + '|' + conjugated[:future] + '|' + remove_accents(conjugated[:future])
    end

    def self.remove_accents(word)
        return word.gsub('ö', 'o').gsub('ë', 'e').gsub('è', 'e').gsub('ä', 'a').gsub('ü', 'u')
    end

    def self.conjugate_goblin(word)
        if CONSONANTS.include? word[0]
            if CONSONANTS.include? word[1]
                return {
                    :future => "kobo" + word,
                    :past => "erko" + word
                }
            elsif VOICED_CONSONANTS.include? word[0]
                if O_COLUMN.include? word[1]
                    return {
                        :future => "kop" + word,
                        :past => "erko" + word
                    }
                else
                    return {
                        :future => "kop" + word,
                        :past => "erko" + word[1..-1]
                    }
                end
            else
                if consonant_before_accent_in(word[1..-1])
                    return {
                        :future => "kop" + word,
                        :past => "erko" + inverse_consonnant_of(word[0]) + word[1..-1] #fix, didn't work
                    }
                else
                    return {
                        :future => "kop" + word,
                        :past => "erko" + word
                    }
                end
            end
        else
            if consonant_before_accent_in(word)
                return {
                    :future => "kob" + word,
                    :past => "erk" + word
                }
            else
                return {
                    :future => "kop" + word,
                    :past => "erk" + word
                }
            end
        end
    end

    def self.consonant_before_accent_in(word)
        for letter in word.split("")
            if CONSONANTS.include? letter
                return true
            elsif TONIC.include? letter
                return false
            end
        end
        return true
    end

    def self.inverse_consonnant_of(word)
        word.split("").each_index do |letter_index|
            letter = word[letter_index]
            VOICED_CONSONANTS.each_index do |consonant_index|
                if letter == VOICED_CONSONANTS[consonant_index]
                    word[letter_index] = VOICELESS_CONSONANTS[consonant_inde]
                elif letter == VOICELESS_CONSONANTS[consonant_inde]
                    word[letter_index] = VOICED_CONSONANTS[consonant_index]
                end
            end
        end
        return word
    end
end
