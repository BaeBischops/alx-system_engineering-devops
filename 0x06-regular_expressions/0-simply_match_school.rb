#!/usr/bin/env ruby
# This was completed by bischops.africa

input = ARGV[0]

# Function to replace 'Sthool' with 'School'
def process_input(input)
  input.gsub('Sthool', 'School')
end

# Process the input and find all occurrences of 'School'
processed_input = process_input(input)
puts processed_input.scan(/School/).join

