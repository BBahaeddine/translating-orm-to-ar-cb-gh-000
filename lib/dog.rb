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
  def find_ot_create_by
  end
end
