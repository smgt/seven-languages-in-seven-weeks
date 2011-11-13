#!/usr/bin/env ruby

# Print the contents of an array of sixteen numbers, four numbers at a time, 
# using just each. Now, do the same with each_slice in Enumerable.


# Using each
puts "Using each:"

i = 0
keys = []
(1..16).to_a.each do |a|
  keys.push(a)
  if i%4 == 3
    puts keys.inspect
    keys = []
  end
  i = i + 1
end

# Using each_slice
puts "\nUsing each_slice:"

(1..16).each_slice(4) do |a|
  puts a.inspect
end
