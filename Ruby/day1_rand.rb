#!/usr/bin/env ruby

# Bonus problem: If you’re feeling the need for a little more, write a
# program that picks a random number. Let a player guess the number, telling
# the player whether the guess is too low or too high.

rand = rand(100)

while true
  print "Guess the random number: "
  guess = gets.to_i
  if guess == rand
    puts "Correct!"
    break
  elsif guess > rand
    puts "To high"
  elsif guess < rand
    puts "To low"
  end
end
