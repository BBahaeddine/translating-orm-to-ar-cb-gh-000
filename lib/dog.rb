class Dog < ActiveRecord::Base
  attr_accessor :name, :breed
  
  
  def save
    self.save
  end
  
  def update(args)
    # dog = self.class.find_by_name(self.name)
    # self.name = dog.name
    # self.breed = dog.breed
    # self.save
  end
  
  def self.find_or_create_by()
    
  end
  
  def find_by_name(nom:)
    self.find_by(name: nom)
  end
end
