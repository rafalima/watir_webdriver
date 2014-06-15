class AdminPage
  include PageObject

  page_url "#{FigNewton.base_url}/admin"

  list_item(:dashboard, id:'dashboard')
  list_item(:products, id:'products')

  def goto_products
    goto(products)
  end



  private

  def goto(option)
    option_element.when_present.click
  end


end
