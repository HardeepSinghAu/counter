require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'

require_relative'options'
prompt = TTY::Prompt.new
class Person
  attr_reader :name, :age, :weight, :height, :gender, :cal_total 
  def initialize(name, age, weight, height, gender)
    @name = name
    @age = age
    @weight = weight 
    @height = height
    @gender = gender
    @cal_total = [0]
  end
  
  def add_calories(calories_consumed)
    @cal_total += calories_consumed
  end

  def bmi(weight, height)
    
    bmi = (@weight.to_f / (@height.to_f/100) ** 2)
    
      puts "==========================="
      puts "Your BMI is #{bmi.to_i}"
         
        case bmi
        when 0..18.5
          puts "You are underweight"
        when 18.5..24.9 
          puts "You are normal weight"
        when 25..29.9
          puts "You are overweight"
        when 30..;
          puts "You are obese"
        else 
          puts "Invalid input"
        end
         
        ideal_weight_lower = ((@height.to_f/100) ** 2) * 18.5
        ideal_weight_upper = ((@height.to_f/100) ** 2) * 24.9 
          puts "Your healthy weight range is #{ideal_weight_lower.to_i} to #{ideal_weight_upper.to_i}kg"
         
        sleep 1
          puts "BMI is not an accurate indicator of health as it does not account for body fat percentage and distribution. For serious concerns regarding your health, always see your General Practioner."
  end

  def cal_required(weight, height, age, gender)
    maleBMR = ((88.362 + (13.397 * @weight.to_f)) + ((4.799 * @height.to_f)) - (5.677 * @age.to_i))
    femaleBMR = ((447.593 + (9.247 * @weight.to_f)) + ((3.098 * @height.to_f)) - (4.330 * @age.to_i))
    
    prompt = TTY::Prompt.new
    bar = TTY::ProgressBar.new("downloading [:bar]", total: 15)
    15.times do
        sleep(0.1)
        bar.advance  
      end
    if @gender == "m"
        puts "==========================="
        puts "Your calories required per day are #{maleBMR.to_i} calories."
    else
      puts "==========================="
      puts "Your calories required per day are #{femaleBMR.to_i} calories."
    end
  end

  def add_food(food_item, calories_per_food, quantity)
    eats = []
    foods = []

    prompt = TTY::Prompt.new

    food_item = prompt.ask("What did you eat today? ")
  
    # if foods.include?(food_item)
    #   puts "you have already added #{food_item} please add a new food item"
    # else 
    # end
    foods << food_item

    food_item_calories =  prompt.ask("how many calories is in one #{food_item}? ")

    print "how many #{food_item} did you eat today? "
    quantity = gets.chomp.to_i
    cal_per_food = food_item_calories.to_i * quantity

    eats << cal_per_food


    eats.each do |cal_per_food|
      puts "you ate #{quantity} lots of #{food_item} which are #{cal_per_food} calories total. "
    end

    puts "would you like to add another food item? (y/n)"
    ans = gets.chomp
    if ans == "y"
        person.add_food()
    else
      require_relative "index.rb"
    end
  end
end


person.name = prompt.ask("What is your name?" )
person << name

options.show_options