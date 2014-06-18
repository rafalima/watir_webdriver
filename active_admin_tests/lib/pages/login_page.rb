class LoginPage
  include PageObject

  page_url "#{FigNewton.base_url}/login"

  text_field(:login, name:'login')
  text_field(:password, name:'password')
  button(:submit_btn, name:'commit')


  def do_login(user)
    login_element.when_present.value = user.username
    password_element.when_present.value = user.password
    submit_btn
  end

end
