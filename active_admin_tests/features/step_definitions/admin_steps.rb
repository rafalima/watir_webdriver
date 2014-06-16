Quando(/^navego para a página de produtos$/) do
  visit(DashboardPage).goto_products
end

Quando(/^crio o produto:$/) do |tabela|
  @dados = tabela.rows_hash
  on ProductsPage do |page|
    page.new_product
    page.create_product(@dados)
  end

end

Então(/^vejo a mensagem: "(.+)"$/) do |msg|
  on(ProductsPage).feedback_message.should eq(msg)
end

E(/^os dados do novo produto são listados corretamente$/) do
  on(ProductsPage).product_details(@dados).should be_true
end
