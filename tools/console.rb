require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Cult.new("CoffeeAddicts", "NYC", 1997, "Coffee coffee coffee")
c2 = Cult.new("TeaAddicts", "Boston", 1885, "T T T")
c3 = Cult.new("MatchaAddicts", "LA", 2017, "Hell yea matcha")
c4 = Cult.new("MateAddicts", "LA", 2014, "Buenas")

f1 = Follower.new("Susan", 37, "Just do it")
f2 = Follower.new("Ted", 23, "I like coffee as black as my heart")
f3 = Follower.new("Delilah", 52, "I like dolls")
f4 = Follower.new("Lucy", 50, "Oh hi")
f5 = Follower.new("Adam", 31, "Wut up")
f6 = Follower.new("Trevor", 45, "I like fire")
f7 = Follower.new("Scott", 42, "Bro Bro")
f8 = Follower.new("Pam", 39, "Hello world")
f9 = Follower.new("Jim", 39, "I like Pam")
f10 = Follower.new("Dwight", 44, "I like beets")
f11 = Follower.new("Karen", 27, "This is my inside voice")

#BloodOath.new(initiation_date, cult, follower)
b1 = BloodOath.new("2007-12-13", c1, f1)
b2 = BloodOath.new("2004-11-16", c2, f2)
b3 = BloodOath.new("2002-05-17", c3, f3)
b4 = BloodOath.new("2004-03-09", c3, f2)
b5 = BloodOath.new("2017-06-18", c3, f5)
b6 = BloodOath.new("2019-10-20", c4, f7)
b7 = BloodOath.new("2001-02-19", c3, f9)
b8 = BloodOath.new("2002-07-09", c4, f11)
b9 = BloodOath.new("2008-02-19", c1, f4)
b10 = BloodOath.new("2006-02-19", c3, f4)
b11 = BloodOath.new("2012-02-19", c2, f8)
b12 = BloodOath.new("2013-02-19", c4, f6)
b13 = BloodOath.new("2014-02-19", c1, f10)
b14 = BloodOath.new("2007-02-19", c3, f4)

binding.pry


puts "Mwahahaha!" # just in case pry is buggy and exits
