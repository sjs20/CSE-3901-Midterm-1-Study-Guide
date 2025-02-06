# Implement the person diagram

class Person
  attr_accessor :name, :id, :age, :email    # Defines both the getter and setter methods

  def initialize(name, id, age, email)      # Set up the initial state of the object
    @name = name
    @id = id
    @age = age
    @email = email
  end

  def toString                              # Displays the information in the instance variable
    "Name: #{@name}, ID: #{@id}, Age: #{@age}, Email: #{@email}"
  end
end

class Student < Person                      # Student is a subclass of Person and inherits attributes and methods from Person
  attr_accessor :marks, :major              # Defines both the getter and setter methods

  def initialize(name, id, age, email, marks, major)
    super(name, id, age, email)             # Call the initialize method of the parent class
    @marks = marks
    @major = major
  end

  def toString
    super + ", Marks: #{@marks.inspect}, Major: #{@major}"
  end
end

# Creates a new Person object
person = Person.new("Alice", '2', '21', "alice.2@osu.edu")

# Converts the object to string
puts person.toString

