require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

sad_camel_club = Cult.new("Sad Camel Club", "New Jersey", 1999, "Camel Sounds", 12)
church_of_doggo = Cult.new("Church of Doggo", "New York", 2019, "We Love Doggos", 1)
killer_corp = Cult.new("Killer Corp", "Albany", 1666, "We Love You", 6)
flatiron_club = Cult.new("Flatiron Club", "Brooklyn", 2017, "Don't Talk About Flatiron", 16)

joe = Follower.new("Joe", 28, "Life is Good")
stacy = Follower.new("Stacy", 11, "Wanna Play?")
bobby = Follower.new("Bobby", 56, "I Don't Wanna Play")
albert = Follower.new("Albert", 38, "Play Freebird!")

church_of_doggo.recruit_follower(joe, "2019-12-13")
church_of_doggo.recruit_follower(stacy, "2019-11-21")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits