# language: pt
Funcionalidade: Registro de usuário e login

  Para poder comprar um produto
  O usuário deve poder se registrar
  E logar no site

  Cenário: Registro de usuário
    Quando eu registro o seguinte usuário:
      |rafael              |
      |rafalima07@gmail.com|
    Então vejo a seguinte mensagem: "Thank you for signing up! You are now logged in."
