require "pry"
class User
  attr_writer :mastercard #à mettre en en-tête de ta classe

  def read_mastercard
    return @mastercard
  end
end

binding.pry
puts "end of file"