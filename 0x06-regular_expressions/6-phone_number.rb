#!/usr/bin/env ruby
# Match 10 digit phone no
# Match a 10 digit phone no 4155049898 without dashes or spaces

puts ARGV[0].scan(/^[0-9]{10}$/).join
