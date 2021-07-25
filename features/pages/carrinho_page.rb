class CarrinhoPage < SitePrism::Page
  
elements :listaProdutos,                '[class*="cart-list__subtitle"]'
elements :qtdePontos,                   '[class*="cart-list__value body-text"]'  
elements :btnRemover,                   '[class*="cart-list__remove-item"]'
element  :loadLivelo,                   '[style*="display: block"]'
element  :msgCarrinhoVazio,    :xpath,  '//*[@id="CC-cart-empty"]/div/h2'

  def validar_produtos
    x = 0
    while x < $nome.count
      return false if $nome[x] != listaProdutos[x].text
      x+=1
    end 
    true
  end

  def validar_pontos
    x = 0
    while x < $nome.count
      return false if $pontos[x] != qtdePontos[x].text
      x+=1
    end 
    true
  end

  def remover_produto(qtde)
    case qtde
    when 'um'
      btnRemover[0].click
      wait_until_loadLivelo_invisible
      validar_exclusao
    when 'todos'
      while has_btnRemover?
        btnRemover.first.click
        wait_until_loadLivelo_invisible
      end
    end
  end

  def validar_exclusao
    $produto = $nome[0]
  end
end
