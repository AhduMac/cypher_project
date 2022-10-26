# My initial thinking was to spread the input out into an array and
# and then use a loop to transfer into ASCII, add a given number and
# translate back into letters, while flattening the array.

# This was overly complex and method #bytes takes a string, spreads
# it into an array and translates into ASCII. From there, I just needed
# to iterate over each element of array using #map, at which point I
# added the given number. 

require 'pry-byebug'
puts "Enter a word to be ciphered"
given_word = gets.chomp.bytes
puts "Enter a key to the cipher in the form of a number"
cipher_key = gets.chomp.to_i

cipher_array = given_word.map {|element| (element + (cipher_key % 26)).chr}
cipher_word = cipher_array.join
puts cipher_word

