Quando(/^eu registro o seguinte usuário:$/) do |tabela|
  dados = tabela.hashes.pop
  visit HomePage do |home_page|
    sign_up_page = home_page.sign_up
    sign_up_page.do_sign_up(dados["usuario"],dados["email"],dados["senha"])

  end
end

Então(/^vejo a seguinte mensagem: "(.+)"$/) do |mensagem|
  on HomePage do |page|
    page.successful_signup_message_displayed?(mensagem).should be_true
  end
end


Quando(/^eu logar com os dados:$/) do |tabela|
  dados = tabela.raw.flatten
  visit HomePage do |home_page|
    login_page = home_page.login
    login_page.do_login(dados[0],dados[1])
  end
end

Então(/^vejo a mensagem de boas vindas "(.+)"$/) do |msg|
  on HomePage do |page|
    page.user_greetings_msg_displayed?(msg).should be_true
  end
end
