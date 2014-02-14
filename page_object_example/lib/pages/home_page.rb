class HomePage
	include PageObject

	page_url 'http://demo.moodle.net/'

	paragraph(:front_page_settings, id: 'frontpagesettings')
	span(:site_administration, xpath: "//span[text()='Site administration']")
	link(:login, link: "Log in")

	def admin?
		front_page_settings_element.exists? && site_administration_element.exists?
	end

	def go_to_login
		self.login
		LoginPage.new(@browser)
	end

end