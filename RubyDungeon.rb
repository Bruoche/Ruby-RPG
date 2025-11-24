$:.unshift File.dirname($0)
puts "Loading..."

EXCLUDED = [
    "RubyDungeon-Extended/DialogGenerator/"
]

def require_if_valid(file)
    for excluded in EXCLUDED
        if file.include?(excluded)
            return
        end
    end
    require(file)
end

require "RubyDungeon-Extended/ASCIIPrinter.rb"
Dir["RubyDungeon-Extended/*.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/*.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/ArmorTypes/*.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/*/Item.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/*/Coins.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/*/Monster.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/Entities/*/*.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/Items/*.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/EntryRequirements/*.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/Monsters/Goblin.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/Monsters/*.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/Bosses/*.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/Statuses/*.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/Characters/*.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/Biomes/BossCell.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/Biomes/OldDungeon.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/Biomes/*.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/SpecialRooms/*.rb"].each {|file| require_if_valid(file)}
Dir["RubyDungeon-Extended/*/*/*.rb"].each {|file| require_if_valid(file)}

require "fileutils" # Manage files (for saving)
require "time" # Get current time (for playtime)
require "tty-screen" # Get terminal dimension in char (for clean ascii printing)
require 'ruby2d' # Play sounds

TTY::Screen.height.times do
    puts
end
PreloadedSFX.get_instance.load_sfxs
debug = (ARGV[0] == "dev_mode")
starting_biome_name = ARGV[1]
if (starting_biome_name != nil) && (Object.const_defined? starting_biome_name)
    starting_biome = Object.const_get(starting_biome_name)
else
    starting_biome = nil
end
ARGV.clear
Game.new(debug, starting_biome)
