
require_relative "classes/radio"
require_relative "classes/secure_radio"


radio = SecureRadio.new
puts radio.status
radio.play
radio.play
radio.play