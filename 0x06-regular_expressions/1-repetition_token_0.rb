#!/usr/bin/env ruby

# Regex implementation for repetitive token

regex = /hbt{2,5}n/
if ARGV[0] =~ regex
  puts ARGV[0]
else
  puts ''
end
