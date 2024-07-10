$:.unshift File.dirname($0)
require "RubyDungeon-Extended/ASCIIPrinter.rb"
Dir["RubyDungeon-Extended/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/Entities/*/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Items/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/EntryRequirements/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Monsters/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Bosses/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/SpecialRooms/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Biomes/OldDungeon.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Biomes/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/*/*.rb"].each {|file| require(file)}

require "fileutils"
require "time"

Game.new
