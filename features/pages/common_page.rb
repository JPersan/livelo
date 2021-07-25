class CommonPage < SitePrism::Page
  set_url 'home'
  
  element :btnAdicionar,                '[class="button button__primary button--large"]'
  element :listaCarrinho,               '#CC-cart-list'           
  
  def cadastrar_produto(qtde)
    produto = PRODUTOS[:normal]
    $nome = []
    $pontos = []
    x = 0
    while x < qtde.to_i
      $produto = produto[:"#{('a'..'j').to_a[rand(0..9)]}"]
      visit($produto[:url])
      $nome.push($produto[:nomeDescricao])
      $pontos.push($produto[:qtdePonto])
      wait_until_btnAdicionar_visible
      botao_adicionar
      wait_until_listaCarrinho_visible
      x+=1
    end
  end
  
  def botao_adicionar
    btnAdicionar.click
  end
end
