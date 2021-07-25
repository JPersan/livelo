E('exclua {string} produtos cadastrados no carrinho') do |qtde|
  carrinho_page.remover_produto(qtde)
end

Entao('visualizo a mensagem {string}') do |msg|
  expect(page).to have_content(msg)
end

Entao('visualizo o carrinho com os nomes, pontos e produtos cadastrados') do
  resNome = carrinho_page.validar_produtos
  expect(resNome).to eql true
  resPontos = carrinho_page.validar_pontos
  expect(resPontos).to eql true
end

Entao('certifico que o produto foi excluído') do
  expect(page).to have_no_content($produto)
end
