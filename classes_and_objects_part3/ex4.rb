module Towable
  def can_tow?(pounds)
    punds < 2000 ? true : false
  end
end
class Vehicle
  @@number_of_vehicle =0
  attr_accessor :color
  attr_reader :year, :model

  def self.number_of_vehicle
    puts "This program created  #{@@number_of_vehicle}"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def initialize(year,color,model)
    @year = year
    @color = color
    @model = model
    @curren_speed = 0
    @@number_of_vehicle +=1

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



class MyCar < Vehicle
  NUMBER_OF_DOORS = 4


  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.model}!"

  end

end

class MyTruck < Vehicle
  include Towable
  NUMBER_OF_DOORS = 4

end
lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.curren_speed
lumina.speed_up(20)
lumina.curren_speed
lumina.brake(20)
lumina.curren_speed
lumina.brake(20)
lumina.curren_speed
# lumina.shut_down
MyCar.gas_mileage(13, 351)
lumina.spray_paint("red")
puts lumina
puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors
