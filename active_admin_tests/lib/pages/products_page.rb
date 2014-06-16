class ProductsPage
  include PageObject

  page_url "#{FigNewton.base_url}/admin/products"

  link(:new_product,link:'New Product')
  text_field(:title, id:'product_title')
  text_field(:description, id:'product_description')
  text_field(:price, id:'product_price')
  text_field(:image, id:'product_image_file_name')
  button(:submit, id:'product_submit')
  div(:flash_notice,class:'flash_notice')
  div(:product_details, class:'panel')


  def new_product
    new_product_element.when_present.click
    ProductsPage.new(@browser)
  end

  def create_product(dados)
    title_element.when_present.value = dados["Titulo"]
    description_element.when_present.value = dados["Descricao"]
    price_element.when_present.value = dados["Preco"]
    image_element.when_present.value = dados["Imagem"]
    submit
  end

  def feedback_message
    flash_notice_element.when_present.text
  end

  def product_details(dados)
    product_details_element.when_visible do
      product_details_element.text.include?(dados["Titulo"]) &&
      product_details_element.text.include?(dados["Descricao"]) &&
      product_details_element.text.include?(dados["Preco"]) &&
      product_details_element.text.include?(dados["Imagem"])
    end
  end


end
