class Vehicle
  attr_accessor :make

  def initialize(make)
    @make = make
  end

  def toString
    puts "Make: #{make}"
  end
end

class Car < Vehicle
  attr_accessor :model

  def initialize(make, model)
    super(make)
    @model = model
  end

  def info
    puts "This is a #{make} car, model #{model}."
  end
end

car = Car.new("Toyota", "Camry")
puts car.info

