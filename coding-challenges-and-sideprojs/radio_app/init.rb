#! user/bin/env ruby

require_relative "classes.rb"

fm = Radio.fm
puts fm.status
puts fm.band
fm.volume = 11
fm.freq = 90
puts fm.status

puts '-' * 20

am = Radio.am
puts am.status
puts am.band
am.volume = 9
am.freq = 990
puts am.status