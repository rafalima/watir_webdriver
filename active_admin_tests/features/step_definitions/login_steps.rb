Quando(/^eu registro o seguinte usuário:$/) do |dados|
  visit HomePage do |page|
    page.sign_up
  end
end

Então(/^vejo a seguinte mensagem: "(.*?)"$/) do |mensagem|
  puts "entao"
end
