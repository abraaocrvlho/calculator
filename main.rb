require_relative "./lib/metodos_calc.rb"

apresentation

loop do
  show_menu
  chosen_operation = gets.chomp

  unless ['1', '2', '3', '4', '+', '-', '*', '/'].include?(chosen_operation) 
    puts '------------------------------------'
    puts 'You chose to exit the program.'
    puts 'Thank you for using the Precious Developers group calculator. Goodbye !'
    exit
  end

  calculation_result = perform_calculation chosen_operation

  show_result calculation_result, chosen_operation
  
  repeat_calculation
end
