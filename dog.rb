require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'


prompt = TTY::Prompt.new
class Person
  attr_accessor :name, :age, :weight, :height, :gender, :cal_total, :bmi, :meals
  def initialize(name, age, weight, height, gender, cal_total, bmi, meals)
    @name = name
    @age = age
    @weight = weight 
    @height = height
    @gender = gender
    @cal_total = [0]
    @bmi = []
    @meals = []
  end
  def name= (name)
    @name = name
  end
  def age(years)
    @age << years
  end
  def weight(kg)
    @weight << kg
  end
  def height(cm)
    @height << cm
  end
  def gender(sex)
    @gender << sex
  end
  def display_user
    puts "#{@name} is #{@age} years old and weighs#{@weight}kg and is #{@height}cm tall."
  end
  def add_calories(calories_consumed)
    @cal_total += calories_consumed
  end 
  def eat(food_item, cal_total)
    puts "What did you eat today? "
    food_item = gets.chomp
    @meals << [food_item] 

    p "how many calories is in one #{meals[food_item]}? "
   calories_per_item = gets.chomp

    p "how many #{meals[food_item]} did you eat today? "
    quantity = gets.chomp

    cal_total = "#{calories_per_item}.to_i * #{quantity}.to_i"
    @meals <<  [cal_total]

    puts "You ate #{quantity} lots of #{food_item} which is a total of #{cal_per_food} calories  "
    
    puts "would you like to add another food item? (y/n)"
    ans = gets.chomp
    if ans == "y"
        add_calories
    else
        # require_relative "options.rb"
    end


  end
  
  def body_mass_index
    @bmi << @weight.to_i*10000 / (@height.to_i ** 2)
  end
  def min_cal
    maleBMR = ((88.362 + (13.397 * @weight.to_f)) + ((4.799 * @height.to_f)) - (5.677 * @age.to_i))
    femaleBMR = ((447.593 + (9.247 * @weight.to_f)) + ((3.098 * @height.to_f)) - (4.330 * @age.to_i))
    if @gender == "m"
        puts "==========================="
        puts "Your calories required per day are #{maleBMR.to_i} calories."
    else
      puts "==========================="
      puts "Your calories required per day are #{femaleBMR.to_i} calories."
    end
  end
end


puts "Hello  and welcome to Calorie Counter!"
user = Person.new(@name, @age, @weight, @height, @gender, @cal_total, @bmi, @meals)

puts "What is your name?"
    user.name = gets.strip
   
puts "Thanks, please enter your age: "
    years = gets.to_i
    user.age = (years)

puts "How much do you weigh in kilograms?: "
    kg = gets.chomp.to_f
    user.weight = (kg)
    
puts "what is your height in cms?: "
    cm =gets.chomp.to_i
    user.height = (cm)
    
puts "What is your gender? Please type m for male or f for female: "
    sex = gets.chomp
    user.gender = (sex)

p user 
p user.body_mass_index



# ________________________________________________

p user.display_user
p "Using this information, we can calculate your BMI and minimum required calories per day"
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
        p user.body_mass_index 
    when "2"
        p user.min_cal
    when "3"
        # user.eat(food_item, cal_total)
        # p user.eat
        require_relative'counter'
    when "4"
        puts "Thank you! see you next time"
     else
     puts  "Invalid entry"
     end
     print "Press ENTER to continue..."
     gets
    end
    

   

# -----------Calculate calories ----

    puts "What did you eat today? "
    user.eat[food_item] = gets.chomp

    # if eats.include?(food_item)
    #     puts "you have already added #{food_item} please add a new food item"
    # else 
    #     eats.push(food_item)
    # end
    p "how many calories is in one #{food}? "
    user.eat[calories_per_item] = gets.chomp

    p "how many #{food} did you eat today? "
    user.eat[quantity] = gets.chomp

    # cal_total = calories.to_i * amount.to_i
    

    puts "You ate #{quantity} lots of #{food_item} which is a total of #{cal_per_food} calories  "
    
    puts "would you like to add another food item? (y/n)"
    ans = gets.chomp
    if ans == "y"
        cal_count
    else
        # require_relative "options.rb"
    end


# cal_count
