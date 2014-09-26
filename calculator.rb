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
end

def initial_action(input_array, intial_result)
  puts "=>number:"
  num1 = gets.chomp
  int_check(input_array, num1)

  puts "=>Operator(+, -, *, /):"
  operation = gets.chomp

  puts "=>number:"
  num2 = gets.chomp
  int_check(input_array, num2)

  initial_result = perform_calculation(input_array[0], input_array[1], operation)
end

def next_action(data, running_total)
  puts "=>(+, -, *, /)|clear|exit:"
  operation = gets.chomp
  if operation == "clear"
    data = []
    running_total = 0
    running_total = initial_action(data, running_total)
    puts "result=> #{running_total}"
    next_action(data, running_total)
  elsif operation == "exit"
    power_button
  elsif (operation == "+") || (operation == "-") || (operation == "*") || (operation == "/")
    puts "=>number:"
    value = gets.chomp
    value = Integer(value) rescue nil
    if value != nil
      running_total = perform_calculation(running_total, value, operation)
      puts "result=> #{running_total}"
      next_action(value, running_total)
    else
      puts "Invalid Entry, please try again"
      next_action(data, running_total)
    end
  end
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

  result = initial_action(input, result)

  puts "result=> #{result}"

  next_action(input, result)


end while power_status

