require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("konan")
player2 = Player.new("rambo")

while (player1.life_points || player2.life_points) > 0

puts " votre score: "
puts " "
puts player1.show_state
puts player2.show_state

puts "gooooooo...!!!"
puts " "

player1.attacks(player2)

break if player2.life_points <= 0

puts " "
player2.attacks(player1)
puts " "
end


