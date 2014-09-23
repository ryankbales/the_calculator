require 'pry'



# user enters a number
# user enters operator
# user enters number
# user either enters an operator and running total prints out, (t) to get total, keep "#{operating}" (c) to clear, (q) to quit


begin
  puts "Power On/Off?"
  power = gets.chomp.downcase
  
  power_status = if power == "on"
    true
  else
    false
  end

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

  puts "Enter numbers and hit 'c' at anytime to get clear the result."
  input = []
  operator = "+, -, *, /"
  input << num1 = 0
  input << num2 = 0
  input << running_total = 0

  puts "=>Num:"
  input[0] = gets.chomp.to_i


  


end while power_status

