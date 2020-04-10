
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
        return if value < 1 || value > 10
        @volume = value
    end

    def status
        "station: #{@freq} #{@band}, volume: #{@volume}"
    end
end