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


manson = Cult.new("manson", "Bakersfield, CA", 1968, "Helter Skelter", 100)
scientology = Cult.new("scientology", "Bakersfield, CA", 1980, "Logic doesn't exist", 1000)
antimanson = Cult.new("antimanson", "Bakersfield, CA", 1968, "Manson sucks", 500)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
