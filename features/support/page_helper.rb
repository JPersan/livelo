Dir[File.join(File.dirname(__FILE__),
              '../pages/*.rb')].sort.each { |file| require file }

# modulos para chamar as classes instanciadas
module PageObjects
  def common_page
    CommonPage.new
  end

  def carrinho_page
    CarrinhoPage.new
  end
end
