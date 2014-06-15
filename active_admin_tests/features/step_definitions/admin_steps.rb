Dado(/^que esteja na área de adminstração$/) do
  visit(DashboardPage)
end

Quando(/^crio um produto$/) do
end

Então(/^vejo a mensagem: "(.+)"$/) do |arg1|
  p arg1
end
