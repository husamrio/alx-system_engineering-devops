#!/usr/bin/env ruby
# parse output and logfile [receiver],[sender],[flags]

puts ARGV[0].scan(/\[(?:from:|to:|flags:)(.*?)\]/).join(",")
