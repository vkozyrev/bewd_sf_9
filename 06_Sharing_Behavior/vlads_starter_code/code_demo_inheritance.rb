require 'pry'
require 'pry-byebug'

# Create an employee class.
class Employee
  attr_accessor :first_name, :last_name, :phone

  def initialize(first_name, last_name)
  end

  def contact_info
  end

  def display_name
  end

  def to_s
  end
end

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee

end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee
end
