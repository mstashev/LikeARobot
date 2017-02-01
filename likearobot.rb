# Q1
class Robot
  attr_accessor :name, :color, :height, :weight

  def initialize(name, color="#FFFFFF", height = 10, weight = 200)
    @name = name
    @color = color
    @height = height
    @weight = weight
  end
#Q2
  def say_hi
    system('say Hi')
  end
#Q3
  def say_name
    system("say My name is #{name}")
  end

  def method_missing(m, *args, &block)
    puts "#{m} does not compute"
    #system('say Does not compute')
  end
end
#Q4,Q5
class BendingUnit < Robot
#Q6,Q7
  def bend(objecttobend = "Knee")
    #Q8
    puts "Bend #{objecttobend}"
  end
end
#Q9,Q10
class ActorUnit < Robot
  #Q11,Q12
  def change_name(newname = "Kenny")
    #Q13
    @name = newname
  end
end

def get_color
  color = "%06x" % (rand * 0xffffff)
end
#Adventure Mode
robots = []
robots2 = []
#Q1
our_class = ["Michael","Miguel","Demetra","Phil","Dave","David","Laura","Rob","Nancy","Kendrick","Ben","Kalea"]

our_class.each do |student|
  name = Robot.new(student, "#" + get_color, rand(10..70), rand(90..1000))
  robots << name
end

# robots.each do |robot|
#   puts robot.inspect
# end

our_class.collect do |student|
  name = Robot.new(student, "#" + get_color, rand(10..70), rand(90..1000))
  robots2 << name
end

# robots2.each do |robot2|
#   puts robot2.inspect
# end

#EPIC
classes = [Robot, BendingUnit, ActorUnit]

#puts classes.sample

robots3 = []
our_class.each do |student|
  name = classes.sample.new(student)
  # Lengendary
  name.elbow
  robots3 << name
end

robots3.each do |robot3|
  puts robot3.inspect
end
