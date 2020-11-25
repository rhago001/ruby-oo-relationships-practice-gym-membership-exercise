# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1= Lifter.new("Rahel", 100)
lifter2= Lifter.new("Chili", 300)
lifter3= Lifter.new("Jack", 500)

gym1=Gym.new("Gold")
gym2=Gym.new("silver")
gym3=Gym.new("blue")

membership1= Membership.new(80,  gym1, lifter2)
membership2= Membership.new(120, gym2, lifter2 )
membership3= Membership.new(40, gym3, lifter3)
membership4= Membership.new(80, gym1, lifter1)
membership5= Membership.new(100, gym2,lifter2 )

Lifter.average
gym1.lifters_gym
lifter1.total_cost
binding.pry

puts "Gains!"
