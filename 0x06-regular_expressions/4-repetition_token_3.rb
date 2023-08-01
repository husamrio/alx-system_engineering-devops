#!/usr/bin/env ruby
# Match together hbn hbtn hbttn ... hbttttn

puts ARGV[0].scan(/hbt*n/).join
