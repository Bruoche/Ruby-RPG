$:.unshift File.dirname($0)
require "Game"
require "Narrator"

def ask_continue()
    case Narrator.ask_continue
    when "1"
        return true
    when "2"
        return false
    else
        Narrator.unsupported_choice_error
        ask_continue
    end
end

wanna_play = true #ask_start
while (wanna_play)
    Game.new()
    wanna_play = ask_continue
end


'''
def ask_start()
    puts "          -- RUBY DUNGEON --"
    puts
    puts
    puts "1) Start"
    puts "2) Exit"
    puts
    print "  >> "
    case gets.chomp
    when "1"
        return true
    when "2"
        return false
    else
        Narrator.unsupported_choice_error
        ask_start
    end
end
'''
