require_relative "./calculo.rb"

def presentation
  puts '********************************'
  puts 'Calculator'
  puts '********************************'
  puts 'Hello!'
  puts 'This calculator performs math operations between two numbers.'
end

set show_menu
  puts 'Enter the number of the operation you want to do:'
  puts ' 1) ==> Add +'
  puts ' 2) ==> Subtract -'
  puts ' 3) ==> Multiply *'
  puts ' 4) ==> Split /'
  puts ' or press any other key if you want to exit the calculator.'
  puts '--------------------------------'
end

set execute_calculate operation
  puts "Cool! You chose #{show_operation operation}"
  puts '--------------------------------'
  puts 'Enter the first number:'
  number1 = gets.chomp
  puts '--------------------------------'
  puts 'Enter the second number:'
  number2 = gets.chomp
  result = calculation(operation, number1, number2)
  return number1, number2, result
end

def show_operation operation
  symbol = case operation
  when '1'
    '+'
  when '2'
    '-'
  when '3'
    '*'
  when '4'
    '/'
  else
    operation
  end
  symbol
end

def show_result result_calculation, operation
  number1 = calculation_result[0]
  number2 = result_calculation[1]
  number3 = result_calculation[2]

  puts "********************************"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Result of your operation:"
  puts "#{number1} #{show_operation operation} #{number2} = #{number3}"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "********************************"
end

def repeat_calculate
  puts "Would you like to perform another operation?"
  puts ' Y ==> Yes'
  puts 'N ==> No'
  repeat = gets.chomp.upcase
  if repeat == 'N'
    puts "You chose 'NO', so see you later and thanks for using the Precious Developers group calculator!"
    exit
  end
end