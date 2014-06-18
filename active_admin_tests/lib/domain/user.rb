class User
  attr_accessor :username, :email, :password

  def initialize(user, email="",password)
    @username = user
    @email = email
    @password = password
  end

end
