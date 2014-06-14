Quando(/^eu registro o seguinte usuário:$/) do |tabela|
  dados = tabela.hashes

  visit HomePage do |home_page|
    sign_up_page = home_page.sign_up
    dados.each do |dado|
      sign_up_page.do_sign_up(dado["usuario"],dado["email"],dado["senha"])
    end

  end
end

Então(/^vejo a seguinte mensagem: (.+)$/) do |mensagem|
  on HomePage do |page|
    page.successful_signup_message_displayed?(mensagem).should be_true
  end
end
