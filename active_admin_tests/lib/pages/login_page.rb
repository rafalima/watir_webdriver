class LoginPage
  include PageObject

  page_url "#{FigNewton.base_url}/login"

  text_field(:login, name:'login')
  text_field(:password, name:'password')
  button(:submit_btn, name:'commit')


  def do_login(login,password)
    login_element.when_present.value = login
    password_element.when_present.value = password
    submit_btn
  end




end
