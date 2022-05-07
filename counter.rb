require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'
require 'colorize'

prompt = TTY::Prompt.new

class CalCount 
    attr_accessor :meals, :cal_total, :food, :quantity
    def initialize(meals, cal_total, food, quantity)
        @meals = []
        @cal_total = cal_total
        @food = food
        @quantity = quantity
    end
    def food(food_item)
        @food << food_item
    end
    def quantity(amount)
        @quantity << amount
    end
    def cal_total(calories)
        @cal_total << calories
    end
    def cal_tally
        cal_tally = @quantity * @cal_total.to_i
    end
    def to_s
        puts "You ate #{amount} lots of #{food_item} which is a total of #{cal_tally} calories  "
    end
    def eat(food_item, cal_total)
        @meals << {food: food_item, cal_total: calories}
    end
    def display_daily_log
        # puts "You ate consumed a total of #{} calories today: "
        @meals.each do |meal|
            puts "\n you ate #{meal[amount]} lots of #{meal[:food]} at #{meal[:calories]}"
            puts "That is a a total of (#{meal[:amount].to_i} * #{meal[:calories].to_i}) calories."   
        end
      end
end

dieter = CalCount.new(@meals, @cal_total, @food, @quantity)

meals = []
    puts "What did you eat today? "
    food_item = gets.chomp.to_s
    dieter.food = food_item
    #     if meals.include?(food_item)
    #     puts "you have already added #{food_item} please add a new food item".red
    # else 
    #     eats << food_item
    # end
    puts "how many calories is in one #{food_item}? "
    calories = gets.chomp.to_i
    dieter.cal_total = calories
    

    puts "how many #{food_item} did you eat today? "
    amount = gets.chomp.to_i
    dieter.quantity = amount
   
    p dieter.cal_tally
    meals << {@food => food_item, @cal_total => dieter.cal_tally}
    p meals



 
    
#     puts "would you like to add another food item? (y/n)"
#     ans = gets.chomp
#     if ans == "y"
#         cal_count
#     else
#         require_relative "options.rb"
#     end
# end
# end
# cal_count