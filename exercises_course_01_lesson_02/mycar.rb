module Donutable
  def spin_donuts
    puts "Can perform amazing rubber laying action!"
  end
end

class Vehicle
  @@vehicle_count = 0
  attr_accessor :year, :model, :color

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@vehicle_count += 1
  end

  def self.count_vehicles
    @@vehicle_count
  end

  def self.gas_mileage_calculator(miles_traveled, gallons_of_gas)
    puts "#{miles_traveled / gallons_of_gas} mpg"
  end

  def to_s
    "A pretty little script to talk about my #{self.model}"
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def age
    puts "Your vehicle is #{calculate_age} years old"
  end

  private

    def calculate_age
      Time.now.year - Time.new(self.year).year
    end
end

class MyCar < Vehicle
  attr_accessor :drive
  include Donutable

  def initialize(year, model, color, drive)
    super(year, model, color)
    self.drive = drive
  end

  MAX_HEIGHT = 100

  def about_my_car
    puts "My car is a #{year} #{color} #{model} and is #{self.drive}"
  end
end

class MyTruck < Vehicle
  attr_accessor :fourbyfour
  def initialize(year, model, color, fourbyfour)
    super(year, model, color)
    self.fourbyfour = fourbyfour
  end

  MIN_HEIGHT = 101

  def about_my_truck
    puts "My truck is a #{year} #{color} #{model} and is #{self.fourbyfour} a 4x4"
  end
end

toyota = MyCar.new(2008, "Matrix", "Baby Blue", "FWD")
toyota.about_my_car
f150 = MyTruck.new(2006, "Ford", "Black", "not")
f150.about_my_truck
f350 = MyTruck.new(2016, "Ford", "Orange", "is")
puts Vehicle.count_vehicles
toyota.spin_donuts
puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

f150.speed_up(20)
toyota.speed_up(50)
f150.shut_down
f150.age
toyota.age
