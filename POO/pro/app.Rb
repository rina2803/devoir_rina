require 'bundler'
Bundler.require

require_relative 'lib/user'
require_relative 'lib/event'

julie = User.new("julie@email.com", 35)
jean = User.new("jean@maimail.com", 22)

my_event = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean])

my_event.age_analysis #j'exécute la nouvelle méthode que j'ai écrite
