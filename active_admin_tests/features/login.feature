# language: pt
Funcionalidade: Registro de usuário e login

  Para poder comprar um produto
  O usuário deve poder se registrar
  E logar no site

  Cenário: Registro de usuário
    Quando eu registro o seguinte usuário:
      |usuario| email|senha|
      |rafael24|rafalima2@gmail.com|1234|
    Então vejo a seguinte mensagem: "Thank you for signing up! You are now logged in."
