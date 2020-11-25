class Gym
  attr_reader :name

  @@all =[]
  def initialize(name)
    @name = name
    self.class.all << self

  end

  def self.all
    @@all
  end 

  def memberships_gym
    Membership.all.select do |members|
      members.gym == self
    end 
  end 

  def lifters_gym
    self.memberships_gym.map do |members|
      #  members.gym == self
       members.lifter
    end 
  end 

  def lifters_name
    self.lifters_gym.map do |list|
      list.name
    end 
  end 

  def lift_total
    total=0
    self.lifters_gym.map do |lifter|
      total+=lifter.lift_total
    end 
    total
  end 
end
