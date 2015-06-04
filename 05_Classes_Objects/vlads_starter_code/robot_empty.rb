#CODE ALONG & LAB WORK
require 'pry'
require 'pry-byebug'

#State & Object Factory: factory that creates and instiantes the robots
#Behavior: Collection of class methods, instance methods, instance variables, local variables, constants etc.,

class Robot

  #getter && setter methods for each attribute
  attr_accessor  :name, :type, :origin

  #instance variables are available through the class -> @name is an instance variable

  def initialize(name, type, origin)
    @name = name
    @type = type
    @origin = origin
  end

  #instance method
  def fly
    add_wings_and_take_off
  end

  def laser_master
    add_laser_training
  end

  #overiding to_s method that comes out of the box
  def to_s
    "#{@name} is a robot of type #{@type} from #{@origin}"
  end

  #class methods can be called like this --> Robot.make_robots(5)
  def self.make_robots(num_of_robots)
    robots = []   
    num_of_robots.times do |i|
      robots.push(self.random_robot_maker)
    end
    robots
  end

  def self.random_robot_maker
    names = ['Charizard', 'Blastoise', 'Mewtwo', 'Pikachu', 'Mew']
    types = ['Water', 'Rock', 'Electric', 'Fire']
    origins = ['Japan']
    self.new(names.sample, types.sample, origins.sample)
  end

  private

  #usually used within instance && class methods.
  def add_wings_and_take_off
    puts "My name is #{@name} and I'm flying back to #{@origin}"
  end

  def add_laser_training
    if @type == 'Super Android'
      puts "#{@name}: PEW PEW PEW!"
    else
      puts "#{@name}: This won't work on this model"
    end
  end

end

robot1 = Robot.new('Phil', 'Developer', 'Canada');
robot2 = Robot.new('Hamburgular', 'Professional Burger Theif', 'McDonalds')
robot3 = Robot.new('Robot', 'Super Android', 'Spaaaaaaace')
puts robot1
puts robot2
robot1.fly
robot1.laser_master
robot3.laser_master
robots = Robot.make_robots(5)
puts robots
