require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'
require 'colorize'

prompt = TTY::Prompt.new


begin

    def cal_count

    calories = []
    eats = []
    puts "What did you eat today? "
    food_item = gets.chomp.to_s
   
    
        if eats.include?(food_item)
        puts "you have already added #{food_item} please add a new food item".red
    else 
        eats << food_item
    end
    puts "how many calories is in one #{food_item}? "
    food_item_calories = gets.chomp.to_i

    puts "how many #{food_item} did you eat today? "
    quantity = gets.chomp.to_i

    cal_per_food = food_item_calories * quantity
    calories.push(cal_per_food) 

    puts "You ate #{quantity} lots of #{eats} which is a total of #{cal_per_food} calories  "
    
    puts "would you like to add another food item? (y/n)"
    ans = gets.chomp
    if ans == "y"
        cal_count
    else
        require_relative "options.rb"
    end
end
end
cal_count