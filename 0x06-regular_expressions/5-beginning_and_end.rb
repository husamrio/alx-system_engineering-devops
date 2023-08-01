#!/usr/bin/env ruby
# Match together a string that starts with "h" 
# and ends with "n" with single char
# Match h.n (begining and end

puts ARGV[0].scan(/h.n/).join
