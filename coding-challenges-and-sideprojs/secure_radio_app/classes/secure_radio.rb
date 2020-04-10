
require_relative "radio"
require_relative "shift_cipher"

class SecureRadio < Radio

    def status
        super
    end

    def play
        puts "The radio plays: " + encoded_audio_stream
    end

    def audio_stream
        super
    end
        
    def encoded_audio_stream
        ShiftCipher.encode(audio_stream,3)
    end

end

