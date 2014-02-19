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

	def login_as(user, pass)
		username_element.when_present.value = user
		password_element.when_present.value = pass
		submit
	end

end