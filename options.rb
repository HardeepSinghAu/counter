require 'colorize'

def show_options
    puts "Please choose an option: "
    puts "==========================="
     puts "1. Calculate BMI"
     puts "2. Calculate minimum required calories per day"
     puts "3. Calculate my calorie intake for today"
     puts "4. Finished"
     puts "=========================="
     print "Enter your option: "
     opt = gets.chomp
     return opt
end
 
    option = ""
    while option != "4"
    option = show_options

    case option
    when "1"
        p user.bmi 
    when "2"
        p user.min_cal
    when "3"
        require_relative 'counter.rb'
        
    when "4"
        puts "Thank you! see you next time"
     else
     puts  "Invalid entry"
     end
     print "Press ENTER to continue..."
     gets
    end
    

   



