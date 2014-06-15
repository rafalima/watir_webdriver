class DashboardPage
  include PageObject

  page_url "#{FigNewton.base_url}/admin"

  list_item(:dashboard, id:'dashboard')
  list_item(:products, id:'products')
  div(:flash_notice, class: 'flash_notice')

  def goto_products
    goto(products)
    ProductsPage.new(@browser)
  end



  private

  def goto(option)
    option_element.when_present.click
  end


end
