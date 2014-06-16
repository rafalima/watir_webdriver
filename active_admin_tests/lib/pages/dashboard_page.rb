class DashboardPage
  include PageObject

  page_url "#{FigNewton.base_url}/admin"

  link(:dashboard, link:'Dashboard')
  link(:products, link:'Products')
  div(:flash_notice, class: 'flash_notice')

  def goto_products
    products_element.when_present.click
    ProductsPage.new(@browser)
  end

end
