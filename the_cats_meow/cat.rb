# create a class called Cat
class Cat

# add initialize method to Cat class
  def initialize(name, preferred_food, meal_time)
    @name           = name
    @preferred_food = preferred_food
    @meal_time      = meal_time
  end

# add instance method that returns meal_time
  def eats_at
    if @meal_time < 12
      "#{@meal_time}AM"
    elsif @meal_time == 12
      "#{@meal_time}PM" # fix for noon
    else
      "#{@meal_time - 12}PM"
    end
  end

# add instance method that returns a string of the cat telling you all about itself
  def meow
    return "Meowww. My name is #{@name} and I like my #{@preferred_food} at #{eats_at}."
  end

end

# create two instances of the Cat class
cat_1 = Cat.new('Ming', 'noms', 12)
cat_2 = Cat.new('Ling', 'yums', 3)

# call meow method on each of the cats and puts to have the program output result to terminal
puts cat_1.meow
puts cat_2.meow
