#!/usr/bin/env ruby
# This was completed by bischops.africa

# Function to process the input and replace 'Sthool' with 'School'
def process_input(input)
  input.gsub('Sthool', 'School')
end

# Read input from ARGV
input = ARGV[0]

# Process the input and find all occurrences of 'School'
processed_input = process_input(input)
output = processed_input.scan(/School/).join

# Print the output if there are any matches; otherwise, print the input itself
puts output.empty? ? input : output

