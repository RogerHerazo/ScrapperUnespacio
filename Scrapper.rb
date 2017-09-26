require 'watir'
require 'phantomjs'
require 'mechanize'
require 'highline/import'
require_relative 'modelos'
require_relative 'WatirModule'

module Scrapper

def self.loginUser(user)
	puts 'Llego aca'
	WatirModule.clickLoginUser
	Watirmodule.fillFields(user)
	we_are_in = areWeIn
	return we_are_in
end

def self.areWeIn

	if WatirModule.exist("spanUsername")
		return true
	else
		return false
	end

end

end
=begin
def findARoom(browser)
	puts 'We start looking for rooms'

	list = browser.div(:id => "menuContent").ul
	
	list.each do |link|
		if link.text.include? 'Book a Specific Room'
			browser.a(:text => /Book a Specific Room/).click
			sleep(4)
		end
		sleep(4)
		bot = Nokogiri::HTML.parse(browser.html)
		table = bot.css('.ClickableRow')
		puts 'Yeah We have found the following rooms for you'

		cont = 0
		table.each do |row|
			cont += 1
			id = row.css("td")[2].text
			puts "If you want the room #{id} enter number #{cont}"
			puts "------------------------------------------------------"
		end
	end

end

def bookARoom
	puts 'We are looking for available rooms'
	list.each do |link|
		if link.text.include? 'Find a Room'
			browser.a(:text => /Find a Room/).click
			sleep(4)
		end
	end
end
=end