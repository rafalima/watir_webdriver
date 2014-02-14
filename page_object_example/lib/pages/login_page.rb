class LoginPage
	include PageObject

	page_url "http://demo.moodle.net/login/index.php"

	text_field(:username, id: 'username')
	text_field(:password, id: 'password')
	button(:submit, id: 'loginbtn')
	link(:login, link: 'Log in')
	span(:login_error, class: "error")


	def login_as_admin
		login_as('admin','sandbox')
	end

	def login_as_student
		login_as('student','sandbox')		
	end

	def invalid_login
		login_as('student','sandbo')		
	end

	def login_error_message
		login_error
	end


	private

	def login_as(username, password)
		self.username = username
		self.password = password
		submit
	end

end