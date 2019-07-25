require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "bienvenu, le jeu est d'etre de dernier survivant!!!"

puts "entrez votre nom"
print ">"
humanplayer_name = gets.chomp
humanplayer = HumanPlayer.new("#{humanplayer_name}")
puts "Bienvenue #{humanplayer_name}"
puts "Voici la liste de tes ennemies :"

player1 = Player.new("rambo")
player2 = Player.new("konan")
enemies = [player1, player2]
enemies.each {|player| puts player.name}

while humanplayer.life_points > 0 && (player1.life_points > 0 || player2.life_points >0)
	puts "votre etat actuel est #{humanplayer.life_points} point de vie"
	puts "tandis que l'état de votre adversaire est"
	print "#{player1.show_state} et "
	puts "#{player2.show_state}"

	puts "a vous d'attaquer"
	puts "Appuyer sur entrer pour continuer!!"
answer = gets.chomp

	puts "que voulez-vous faire : \n A = Attaquer rambo, \n B = Attaquer konan, \n X = Ameliorer votre arme, \n V = chercher vie"
	print "(A/B/X/V) >>>>"
@command = gets.chomp.to_s

		if @command == "A"
			humanplayer.attacks(player1)
			puts "#{humanplayer_name} a attaqué rambo et en effet: "
			puts player1.show_state
		elsif @command == "B"
			humanplayer.attacks(player2)
			puts "#{humanplayer_name} a attaqué rambo et en effet: "
			puts player2.show_state
		elsif @command == "X"
			humanplayer.search_weapon
		elsif @command == "V"
			humanplayer.search_health_pack
		end

	puts "c'est au tour des autres joueurs t'attaquer"
	puts "Appuyer sur entrer pour continuez!!"
answer = gets.chomp
	puts "les autres joueurs t'attaqent!!!"
	enemies.each {|player|
		if player.life_points < 1
			puts "#{player.name} est deja mort"
		else
		player.attacks(humanplayer)
		end}
puts "voici votre nouvelle etat, #{humanplayer.life_points} point de vie!!"
puts "Appuyer sur entrer pour continuer"
answer = gets.chomp
puts "continuont alors!!"
puts " "
puts "nouvele rounde"
puts " "

end

puts " la partie est finie "
if humanplayer.life_points > 0
puts "TU AS GAGNÉÉÉÉÉÉEEE!!!!!"
puts "Merci pour votre participation!!"

else puts "Vous etes poulet!!!"
end

binding.pry
