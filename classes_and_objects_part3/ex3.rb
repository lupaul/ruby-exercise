module Towable
  def can_tow?(pounds)
    punds < 2000 ? true : false
  end
end
class Vehicle
  @@number_of_vehicle =0

  def self.number_of_vehicle
    puts "This program created  #{@@number_of_vehicle}"
  end

  def initialize
    @@number_of_vehicle +=1
  end
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end



class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  attr_accessor :color
  attr_reader :year
  def initialize(year,color,model)
    @year = year
    @color = color
    @model = model
    @curren_speed = 0

  end

  def speed_up(number)
    @curren_speed += number
    puts "你現在加速了 #{number}!!!"
  end

  def brake(number)
    @curren_speed -= number
    puts "你現在減速 #{number}!!!"
  end

  def curren_speed
    puts "你現在速度為 #{@curren_speed}!!!!"
  end

  def stop_car
    @curren_speed = 0
    puts "你緊急煞車！！！ 速度瞬間變為 #{@curren_speed}"
  end

  def spray_paint(color)
    self.color = color
    #@color = color
    puts "你車的顏色變成#{@color}了！！！！"
  end

end

class MyTruck < Vehicle
  include Towable
  NUMBER_OF_DOORS = 4

end

puts MyCar.ancestors
puts "**********"
puts MyTruck.ancestors
puts "----------"
puts Vehicle.ancestors
