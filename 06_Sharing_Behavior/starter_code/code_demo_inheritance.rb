require 'pry'
require 'pry-byebug'

# Create an employee class.
class Employee #inherits from the Object class
  attr_accessor :first_name, :last_name, :phone

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def to_s
    "My name is #{first_name} #{last_name}"
  end
end

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee
  attr_accessor :title, :email

  def initialize(first_name, last_name, title, email)
    super(first_name, last_name)
    @title = title
    @email = email
  end

  def full_name
    "My name is #{first_name}. I am a manager. My title is #{title}"
  end
end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee
  attr_accessor :twitter_handle

  def initialize(first_name, last_name, twitter_handle)
    super(first_name, last_name)
    @twitter_handle = twitter_handle
  end

  def contact
    @twitter_handle
  end

end

manager  = Manager.new("Mary", "Jane", "CEO", "ceo@mary_jane.com")
puts manager.full_name

marketer = Marketer.new("Joe", "Jackson", "@joe_jackson")
puts marketer.contact
