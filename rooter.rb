# router.rb

require_relative 'quickstart'
require_relative 'lib/app/test'
require_relative 'lib/controller'



class Rooter

  def initialize
  	@service = OpenAccessToApi.new
		@controller = Controller.new
		
		@service.show_some_result_to_said_it_worked

  end 
  
	def perform
		puts "salut Maurice, voici le progamme potin !"
		while true

			puts "que veux tu faire?"
			puts " 1 -> faire un test"
			puts " 2 -> envoyer des mail au mairies"
			puts " 3 -> quitter l'application"
			choice = gets.chomp.to_i

			case choice
			when 1
				@controller.test1
			when 2
				@contoller.flood_maximum
			when 3
				puts "bye, a bientôt"
				break
			else
				puts "ce choix n'existe pas, merci de reessayer"
			end

		end
	end
end
