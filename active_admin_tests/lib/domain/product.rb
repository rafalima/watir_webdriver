class Product
  attr_accessor :title, :description, :price, :image

  def initialize(title,description,price,image)
    @title = title
    @description = description
    @price = price
    @image = image
  end
end
