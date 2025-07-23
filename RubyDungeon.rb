$:.unshift File.dirname($0)
puts "Loading..."
require "RubyDungeon-Extended/ASCIIPrinter.rb"
Dir["RubyDungeon-Extended/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/ArmorTypes/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/*/Item.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/*/Coins.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/*/Monster.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/Entities/*/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Items/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/EntryRequirements/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Monsters/Goblin.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Monsters/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Bosses/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Statuses/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Characters/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Biomes/BossCell.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Biomes/OldDungeon.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Biomes/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/SpecialRooms/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/*/*.rb"].each {|file| require(file)}

require "fileutils" # Manage files
require "time" # get current time
require "tty-screen" # get window width
require 'ruby2d' # play sounds
TTY::Screen.height.times do
    puts
end
PreloadedSFX.get_instance.load_sfxs
Game.new
