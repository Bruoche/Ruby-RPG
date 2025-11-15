class SoundManager
    SOUND_FOLDER = 'RubyDungeon-Extended/Sounds/'
    SFX_FOLDER = 'Sfx/'
    EXTENSION = '.ogg'

    def self.play(sound_name)
        sfx = PreloadedSFX.get_instance.get_sfx(sound_name)
        if (sfx != nil)
            sfx.play
        end
    end

    def self.set_volume
        Sound.mix_volume = Settings.sound_effects_volume
    end
end
