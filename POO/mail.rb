require "pry"
class User

  def update_email(email_to_update)
    @email = email_to_update
  end

  def read_email
    return @email
  end

end

binding.pry
puts "end of file"