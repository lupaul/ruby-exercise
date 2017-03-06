# Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.
class MyCar
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

end
