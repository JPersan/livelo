# Teste Automação Livelo
> Carrinho de Compras

## Índices
- [Guia de instalação](#installation)

## Guia de instalação

1. Dependências Globais

    * Instalar o [Ruby + Devkit] link para download =>(https://rubyinstaller.org/downloads/)
    - Recomendo utilizar a versão 2.4.4

    * Ou Instalar o Ruby via [Homebrew](http://brew.sh/)
    ```
    $ brew install ruby
    ```
    * Instalar Bundler (Sudo pode ser necessário)
    - Bundler é o gerenciador de gemas do Ruby, oferece um ambiente consistente para o gerenciamento e instalação
    das dependencias do projeto.
    ```
    $ gem install bundler
    ```
2. Dependências do Projeto

	* Instalar pacotes (Usar sudo caso necessário)
	```
	$ bundle install
	```

### Executar Testes
  ```
  cucumber -t @regressao_livelo -p qalivelo
```


