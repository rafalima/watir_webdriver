class HomePage
  include PageObject

  page_url 'http://localhost:3000/'

  link(:sign_up_link, link:"Sign up")

  def sign_up
    sign_up_link
  end

end
