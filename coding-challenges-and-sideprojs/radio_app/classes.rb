
class Radio
    attr_reader :volume, :band, :freq

    def self.fm
        Radio.new("FM", 90.7)
    end

    def self.am
        Radio.new("AM", 1000.0)
    end

    def initialize(band, freq)
        @band = band
        @volume = 5
        @freq = freq
    end

    def freq=(value)
        value.to_f if value.is_a?(Float)
        case @band
            when "FM"
                return if value < 88.0 || value > 108.0
                @freq = value
            else
                return if value < 540.0 || value > 1600.0
                @freq = value
        end
    end

    def volume=(value)
        raise OutofRangeError.new(value) if value < 1 || value > 10
    rescue OutofRangeError => e
        puts "#{e.class}: #{e.message}"
        print "Please provide another volume setting: "
        value = gets.chomp.to_i
        
        @volume = value
    end

    def status
        "station: #{@freq} #{@band}, volume: #{@volume}"
    end
end

class OutofRangeError < StandardError

    def initialize(value)
        super
        @value = value
    end

    def message
        "Volume set was #{@value}. Please only set the volume from 1 to 10."
    end
end