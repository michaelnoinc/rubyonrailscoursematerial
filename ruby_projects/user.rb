module Destructable
  def destroy(anyobject)
    puts "I will destroy the object"
  end
end

class User
  include Destructable
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end
  
  def run
    puts "Hey I'm #{@name}"
  end
  
  def self.identify_yourself
    puts "Hey I am a class method"
  end
  
  def get_name
    @name
  end
  
  def set_name=(name)
    @name = name
  end
end


class Buyer < User
  def run
    puts "Hey I'm #{@name} and I'm a Buyer."
  end
end


class Seller < User
  def run
    puts "Hey I'm #{@name} and I'm a Seller."
  end
end


class Admin < User
  def run
    puts "Hey I'm #{@name} and I'm an Admin."
  end
end

User.identify_yourself

user = User.new("Murder", "Blah@blah.com")
user.destroy("Murder")
#puts user.name
#puts user.email
#user.name = "Guy"
#user.email = "Ugh@email.com"
#puts user.name
#puts user.email

#puts user.get_name
#puts user.set_name = "Guy"
#puts user.get_name
#user.run

buyer1 = Buyer.new("John Doe", "email@email.com")
buyer1.run

seller1 = Seller.new("John Doe1", "email@email.com")
seller1.run

admin1 = Admin.new("John Doe2", "email@email.com")
admin1.run