require 'FileUtils'
require_relative 'DialogGenerator.rb'

class DialogCorrector
    def self.correct_from(path_to_csv)
        file = File.open(DialogGenerator::BASE_PATH + DialogGenerator::SOURCE_PATH + "dialog_to_correct")
        corrected_dialog = ""
        for line in file.read.split("\n")
            corrected_line = correct(line)
            corrected_dialog += corrected_line + "\n"
        end
        DialogGenerator.write("corrected_dialog", corrected_dialog)
        file.close
        puts ">> done"
    end

    def self.correct(line)
        if !line.include? "_KEY_GTE_"
            return line
        end
        line_array = line.split (/\[|\]/)
        first_cluster = true
        triggers = ""
        for trigger_cluster in line_array[1].split(/, |,/)
            quoteless_cluster = trigger_cluster.tr('"', '')
            added_triggers = ""
            for trigger in quoteless_cluster.split('|')
                if DialogGenerator.consonant_after_accent_in(trigger)
                    punctual_suffix = "po"
                else
                    punctual_suffix = "bo"
                end
                if trigger[-1] == "r"
                    hasty_suffix = "po"
                else
                    hasty_suffix = "rpo"
                end
                added_triggers += '|' + trigger + hasty_suffix + '|' + trigger + punctual_suffix
            end
            if first_cluster
                first_cluster = false
            else
                triggers += ', '
            end
            triggers += '"' + quoteless_cluster + added_triggers + '"'
        end
        return line_array[0] + '[' + triggers + ']' + line_array[2]
    end
end

DialogCorrector.correct_from("dialog_to_correct")
