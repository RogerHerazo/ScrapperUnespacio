require 'watir'
require 'phantomjs'

module WatirModule

	@browser

	def self.init
		@browser = Watir::Browser.new(:phantomjs)
		@browser.goto 'http://guaymaro.uninorte.edu.co/UNEspacio/index.php?p=Index'
	end

	def self.clickLoginUser
		@browser.div(:id => "portalMenuBar").li(:text => /Log in/).click
	end

	def self.fillFields user
	@browser.input(:name => 'txtUserName').select
	@browser.send_keys user.id
	@browser.input(:name => 'txtPassword').click
	@browser.send_keys user.password
	@browser.input(:id => 'btnLogin').click
	end

	def self.exists id
		return @browser.span(:id => "#{id}").exists?
	end

end