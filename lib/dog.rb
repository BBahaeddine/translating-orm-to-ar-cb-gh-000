class Dog < ActiveRecord::Base 
  attr_accessor :name, :breed, :id
  
  def initialize(args)
    # @name = args[:name] 
    # @breed = args[:breed]
    args.each {|key, value| self.send(("#{key}="), value)}
  end
  
  def self.create(args)
    dog = self.new(args)
  end
  
  def save(args)
    sql = <<-SQL 
      INSERT INTO dogs(name, id) VALUES(?, ?)
    SQL
    DB[:conn].execute(args[:name], args[:breed])
    self.id = DB[:conn].execute("SELECT last_inserted_id() FROM dogs")[0][0]
  end
  
  def find_or_create_by
  end
  
  def self.find_by_id(id)
    self.find(id)
  end
end
