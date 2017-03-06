#1. Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.
#2.# Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that allows you to view, but not modify, the year of your car.

class MyCar
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

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.color = 'black'
puts lumina.color
puts lumina.year
lumina.spray_paint('red')
puts lumina.color
