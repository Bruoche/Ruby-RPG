class SoundManager
    SOUND_FOLDER = "RubyDungeon-Extended/Sounds/"
    SFX_FOLDER = "Sfx/"
    EXTENSION = ".wav"

    def self.play(sound_name)
        sound = Sound.new(SOUND_FOLDER + SFX_FOLDER + sound_name + EXTENSION)
        sound.play
    end
end
