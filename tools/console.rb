require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
#Cult.new(name, location, founding_year, slogan)
c1 = Cult.new("BlueBlood", "Hollywood", 1987, "Blue is the new Black.")
c2 = Cult.new("KpopFans", "Seoul", 2008, "Kpop is the Best in the World")
c3 = Cult.new("FruitySweets", "NYC", 1999, "Nature's candy")

#Follower.new (name, age, life_motto)
f1 = Follower.new("Lauren", 25, "sweet tooth 4 life")
f2 = Follower.new("James", 39, "Blue is my fav color")
f3 = Follower.new("Cammy", 18, "sweet as sugar, spicy as pepper")

#BloodOath.new(cult, follower, initiation_date  _YYYY-MM-DD_)

b1 = BloodOath.new("today", c1, f2)
b2 = BloodOath.new("today", c2, f2)
b3 = BloodOath.new("today", c2, f3)
b4 = BloodOath.new("today", c3, f1)
b5 = BloodOath.new("today", c3, f3)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits