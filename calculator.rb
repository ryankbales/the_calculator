require 'pry'

calc_image = "
 _____________________
|  _________________  |
| |              0. | |
| |_________________| |
|  ___ ___ ___   ___  |
| | 7 | 8 | 9 | | + | |
| |___|___|___| |___| |
| | 4 | 5 | 6 | | - | |
| |___|___|___| |___| |
| | 1 | 2 | 3 | | x | |
| |___|___|___| |___| |
| | . | 0 | = | | / | |
| |___|___|___| |___| |
|_____________________|

"
puts calc_image

puts "Enter numbers you wish to calculate separated by a space:"

num_input = gets.chomp.split.each_slice(1).map { |n| n.join ' '}
numbers = []
num_input.each do |n|
  numbers << n.to_i
end

puts "(A)dd, (S)ubtract, (M)ultiply, (D)ivide?"


