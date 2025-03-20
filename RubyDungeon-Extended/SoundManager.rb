class SoundManager
    SOUND_FOLDER = 'RubyDungeon-Extended/Sounds/'
    SFX_FOLDER = 'Sfx/'
    EXTENSION = '.ogg'

    def self.play(sound_name)
        if Settings.sound_effects
            PreloadedSFX.get_instance.get_sfx(sound_name).play
        end
    end
end
