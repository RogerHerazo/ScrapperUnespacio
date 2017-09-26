require 'highline/import'
require_relative 'Scrapper'
require_relative 'modelos'
require_relative 'WatirModule'
require 'highline/import'

module View
	def self.startScrapper
		puts 'Welcome to Reservations'
		WatirModule.init
	end

	def self.credentials

		puts 'Fill your credentials'
		puts 'Username: '
		id = gets.chomp
		pass = passwordCred('Password')
		user = User.new(id,pass)	
		cred = Scrapper.loginUser(user)

		if 	!cred
			puts 'Wrong password or user'
			sleep(2)
			credentials()
		else
				puts 'Your credentials are good'
		end
	end

def self.passwordCred(message, mask="*")
	ask(message) {
			|o| o.echo = mask
	}
end
end