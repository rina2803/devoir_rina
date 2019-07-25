require pry
class User
	def show_itself
		print "voici l instance : "
		puts self 

	end
end

binding.pry
puts "end of file"