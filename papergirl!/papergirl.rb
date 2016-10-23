# create a class called Papergirl
class Papergirl

# add attributes
  attr_reader   :earnings # needs to be read-only!
  attr_accessor :name, :experience

# add initialize method to Papergirl class
  def initialize(name)
    @name       = name
    @experience = 0 # number of papers delivered
    @earnings   = 0
    # @quota      = 0
  end

# method to calculate and return papergirl's quota for her next delivery
  def quota
      quota = (@experience/2) + 50
  end

# method to calculate and return the amount of money earned on a particular delivery
  def deliver(start_address, end_address)
    papers_delivered = ((end_address - start_address) + 1)
    if papers_delivered >= quota # how does this method call on the quota from the method prior? don't variables and their values exist for the method then disappear?
      wage = (papers_delivered * 0.25) + ((papers_delivered - quota) * 0.25) # .25 because first part of the equation covers the other .25 (total= .50)
    else papers_delivered < quota
      wage = (papers_delivered * 0.25) - 2
    end
# update papergirl's experience
    @experience += papers_delivered
    @earnings += wage.to_f
# puts money earned
    wage
  end

# method to return a string about the papergirl's performance
  def report
    puts "I'm #{@name}, I've delivered #{@experience} papers and I've made $#{@earnings} so far!"
  end

end

sally = Papergirl.new("Sally")
puts sally.deliver(101, 160)
puts sally.deliver(1, 75)
puts sally.report
