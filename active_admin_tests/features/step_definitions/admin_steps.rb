Quando(/^navego para a página de produtos$/) do
  visit(DashboardPage).goto_products
end

Quando(/^crio o produto:$/) do |tabela|
  dados = tabela.rows_hash
  @product = Product.new(dados["Titulo"],dados["Descricao"],dados["Preco"],dados["Imagem"])
  on ProductsPage do |page|
    page.new_product
    page.create_product(@product)
  end

end

Então(/^vejo a mensagem: "(.+)"$/) do |msg|
  on(ProductsPage).feedback_message.should eq(msg)
end

E(/^os dados do novo produto são listados corretamente$/) do
  on(ProductsPage).product_details(@product).should be_true
end
