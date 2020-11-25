class Lifter
  attr_reader :name, :lift_total
  @@all =[]

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    
    self.class.all << self

  end

  def self.all
    @@all
  end 

  def memberships
    Membership.all.select do |member|
      member.lifter == self
    end 
  end 

  def gyms
    self.memberships.map do |membership|
          membership.gym
      # binding.pry
    end 
  end 
  
  def self.average
    total =0
    number=Lifter.all.count
    Lifter.all.each do |member|
      
     total+= member.lift_total 
    end 
  
    average= total/number
  end 

  def total_cost
    total=0
    self.memberships.each do |member|
      total+=member.cost
    end 
    total
  end 

  def new_gym(cost,gym)
    Membership.new(cost,gym,self)
  end 

end
