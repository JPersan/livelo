Dado('que eu acesse a home') do
  common_page.load
  expect(page).to have_content('Use seus pontos e faça o seu resgate agora mesmo!')
end

E('cadastre produtos no carrinho') do
  common_page.cadastrar_produto('3')
end
