class User
  attr_accessor :username, :email, :password

  def initialize(user, password, email="")
    @username = user
    @email = email
    @password = password
  end

end
