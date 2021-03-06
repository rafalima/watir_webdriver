class HomePage
  include PageObject

  page_url FigNewton.base_url

  link(:sign_up_link, link:"Sign up")
  link(:login_link, link:"Log in")
  div(:auth, id:'auth')

  def sign_up
    sign_up_link_element.when_present.click
    SignUpPage.new(@browser)
  end


  def successful_signup_message_displayed?(message)
    wait_until(5) do
      text.include? message
    end
    true
  end

  def login
    login_link_element.when_present.click
    LoginPage.new(@browser)
  end

  def user_greetings_msg_displayed?(msg)
    auth_element.when_present.text.include?(msg)
  end

end
