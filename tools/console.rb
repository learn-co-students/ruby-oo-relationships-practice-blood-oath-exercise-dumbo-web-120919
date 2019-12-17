require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

charles = Follower.new("charles", 30, "We're not in wonderland anymore, Alice.")
tom = Follower.new("tom", 50, "Nothing ends nicely.")
charlotte = Follower.new("charlotte", 100, "We are in wonderland!")


manson = Cult.new("manson", "Bakersfield, CA", 1968, "Helter Skelter")
scientology = Cult.new("scientology", "Bakersfield, CA", 1980, "Logic doesn't exist")
antimanson = Cult.new("antimanson", "Bakersfield, CA", 1968, "Manson sucks")


bo1 = BloodOath.new("2019-12-16", manson, charles)
bo2 = BloodOath.new("2099-12-26", antimanson, charlotte)
bo3 = BloodOath.new("2155-01-01", scientology, tom)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
# Cult -< BloodOath >- Follower