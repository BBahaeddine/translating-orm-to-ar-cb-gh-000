class Dog < ActiveRecord::Base 
  attr_accessor :name, :breed 
  
  def initialize(args = {})
    @name = args[:name]
    @breed = args[:breed]
  end
  
  def self.create(args)
    dog = self.new(args)
    dog.save
  end
  def find_or_create_by
  end
  
  def self.find_by_id(id)
    self.find(id)
  end
end
