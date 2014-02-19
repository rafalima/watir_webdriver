class HomePage
	include PageObject

	page_url 'http://demo.moodle.net/'

	paragraph(:front_page_settings, id: 'frontpagesettings')
	span(:site_administration, xpath: "//span[text()='Site administration']")
	link(:login, link: "Log in")
	link(:responsive_navbar, class: 'btn btn-navbar')

	def admin?
		front_page_settings_element.exists? && site_administration_element.exists?
	end

	def go_to_login
		if responsive_navbar_visible?
			responsive_navbar
		end
		
		login
		LoginPage.new(@browser)
	end


	def responsive_navbar_visible?
		responsive_navbar_element.visible?
	end

end