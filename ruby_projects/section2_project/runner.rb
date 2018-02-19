require 'pp'
require_relative 'user'

user = User.new 'jar@email.com', "Jar"

pp user
user.save