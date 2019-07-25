require "pry"
class User
  attr_accessor :email

  def initialize(email_to_save)
    @email = email_to_save
    puts "On envoie un email de Bienvenue !!"
  end
end

binding.pry
puts "end of file"