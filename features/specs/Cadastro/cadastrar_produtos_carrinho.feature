# language: pt

@regressao_livelo
Funcionalidade: Carrinho
  Eu como QA da Livelo
  Quero garantir a qualidade dos cenários referente ao Carrinho de Compras

Contexto:
  Dado que eu acesse a home
  E cadastre produtos no carrinho

@validar_carrinho_vazio
Cenario: Validar Carrinho Vazio
  E exclua 'todos' produtos cadastrados no carrinho
  Entao visualizo a mensagem 'Ainda não existem itens no seu carrinho'  

@inserir_produtos_carrinho
Cenario: Cadastrar Produtos no Carrinho
  Entao visualizo o carrinho com os nomes, pontos e produtos cadastrados

@excluir_produto_carrinho
Cenario: Excluir Produtos no Carrinho
  E exclua 'um' produtos cadastrados no carrinho
  Entao certifico que o produto foi excluído
  