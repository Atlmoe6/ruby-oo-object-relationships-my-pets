class Dog
  attr_reader :name
  attr_accessor :owner, :mood

  @@all = []
  @@count = 0 
 
  def initialize (name, owner)
    @name = name 
    @owner = owner
   @mood = "nervous"
   @@all << self
   @@count +=1 
  end 

  def self.all
    @@all
  end

end