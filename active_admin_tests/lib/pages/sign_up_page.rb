class SignUpPage
  include PageObject

  page_url "#{FigNewton.base_url}/signup"


  text_field(:username, id:'user_username')
  text_field(:email, id:'user_email')
  text_field(:password, id:'user_password')
  text_field(:password_confirmation, id:'user_password_confirmation')
  button(:submit, id:'user_submit')

  def do_sign_up(username, email, password)
    self.username_element.when_present.value = username
    self.email_element.when_present.value = email
    self.password_element.when_present.value = password
    self.password_confirmation_element.when_present.value = password
    submit
  end
end
