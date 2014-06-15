# language: pt
Funcionalidade: Área de administração do sistema

  Para poder realizar vendas
  Um administrador deve poder gerenciar
  Usuários, pedidos e produtos


  Cenário: Criar Produto
    Dado que esteja na área de adminstração
    Quando crio o produto:
      | usuario  | email               | senha |
      | rafael24 | rafalima2@gmail.com | 1234  |
    Então vejo a mensagem: "Product was successfully created."
