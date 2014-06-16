# language: pt
Funcionalidade: Área de administração do sistema

  Para poder realizar vendas
  Um administrador deve poder gerenciar
  Usuários, pedidos e produtos


  Cenário: Criar Produto
    Quando navego para a página de produtos
    E crio o produto:
      | Titulo    | Dark Side of the moon |
      | Descricao | Album do Pink Floyd   |
      | Preco     | 123                   |
      | Imagem    | darkside.jpg          |
    Então vejo a mensagem: "Product was successfully created."
    E os dados do novo produto são listados corretamente
