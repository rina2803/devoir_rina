require "pry"
class User
  attr_accessor :email
  @@user_count = 0 # on initialise la variable de classe

  def initialize(email_to_save)
    @email = email_to_save
    @@user_count = @@user_count + 1
  end

  def self.count
    return @@user_count
  end
end

binding.pry
puts "end of file"