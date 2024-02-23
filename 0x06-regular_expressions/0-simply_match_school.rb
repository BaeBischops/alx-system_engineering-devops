#!/usr/bin/env ruby

# Accept the argument from the command line
input = ARGV[0]

# Define the regular expression to match "School"
regex = /School/

# Use the scan method to find matches and join them
matches = input.scan(regex).join

# Output the matches with a trailing newline
puts matches + "$"
