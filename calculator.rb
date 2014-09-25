require 'pry'

power_status = false
def power_button
  puts "Power On/Off?"
  power = gets.chomp.downcase
  
  power_status = if power == "on"
    true
  else
    false
  end
end

def int_check(input_array, value)
  value = Integer(value) rescue nil
  while value == nil
    puts "Invalid, please enter a number."
    value = gets.chomp
    int_check(input_array, value)
  end
  input_array << value.to_i
end

def perform_calculation(operand_1, operand_2, operator)
  case operator
  when '+'
    result = operand_1 + operand_2
  when '-'
    result = operand_1 - operand_2
  when '*'
    result = operand_1 * operand_2
  when '/'
    result = operand_1 / operand_2
  else
    puts "Invalid operator, please try again."
    puts "=>Operator(+, -, *, /):"
    operator = gets.chomp
    perform_calculation(operand_1, operand_2, operator)
  end
  puts result
end

begin
  power_button

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

  input = []
  result = 0

  puts "Enter numbers to keep going, 'c' to clear or 'exit' to quit."

  puts "=>Num:"
  num1 = gets.chomp
  int_check(input, num1)

  puts "=>Operator(+, -, *, /):"
  operation = gets.chomp

  puts "=>Num:"
  num2 = gets.chomp
  int_check(input, num2)

  perform_calculation(input[0], input[1], operation)

end while power_status

