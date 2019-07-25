class Player
	attr_accessor :name, :life_points

	def initialize(name)
		@name = name
		@life_points = 15
	end

	def show_state
		@state = @life_points
		puts "#{@name} a #{@state} points de vie"
	end

	def gets_damage(damage_received)
		@life_points = @life_points - @damage_received
		puts "le joueur #{@name} est mort!!!!" if @life_points <= 0
	end

	def attacks(player)
		puts "#{@name} attaque #{player.name}"
		@damage_number = player.compute_damage
		player.life_points -=@damage_number
		puts "il lui inflinge #{@damage_number} points de dommages"
		puts "le joueur #{player.name} est mort!!!" if player.life_points <= 0
	end
	def compute_damage
		return rand(1..6)
	end
end

class HumanPlayer < Player
	attr_accessor :weapon_level

	def initialize(name)
		@name = name
		@life_points = 100
		@weapon_level = 1
	end

	def show_state
		puts "#{name} a #{@life_points} points de vie et une de niveau #{@weapon_level}"
	end

	def compute_damage
		rand(1..6) * @weapon_level
	end

	def search_weapon
		@search_weapon_result = rand(1..6)
		puts "tu as trouve une arme de niveau #{@search_weapon_result}"
		if @search_weapon_result > @weapon_level
			@weapon_level = @search_weapon_result
			puts "super!!! elle est meilleure que ton arme actuelle : tu la prends."
		else
			puts  "dommge, elle n'est pas mieux que arme actuelle."
		end
	end

	def search_helth_pack
		@search_health_result = rand(1..6)
		if @search_health_result == 1
			puts "tu n'as rien trouve..."
		elsif @search_health_result == 6
			@llife_points += 80
			if @life_points > 100
			   @life_points = 100
			end
			puts "waow, tu as trouve un pack de +80 points de vie"
			else
				@life_points += 50
				if @life_points > 100
				   @life_points = 100
				end
				puts "Bravo, tu as trouve un pack de +50 points de vie!!!!"
			end
		end
	end

			

	
