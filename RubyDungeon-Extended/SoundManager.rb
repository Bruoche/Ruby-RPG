class SoundManager
    SOUND_FOLDER = 'RubyDungeon-Extended/Sounds/'
    SFX_FOLDER = 'Sfx/'
    EXTENSION = '.ogg'

    def self.play(sound_name)
        if Settings.sound_effects
            sound = Sound.new(SOUND_FOLDER + SFX_FOLDER + sound_name + EXTENSION)
            sound.play
        end
    end
end
