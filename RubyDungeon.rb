$:.unshift File.dirname($0)
Dir["RubyDungeon-Extended/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Monsters/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Items/*.rb"].each {|file| require(file)}
Dir["RubyDungeon-Extended/*/Biomes/*.rb"].each {|file| require(file)}
require "fileutils"

Game.new()
