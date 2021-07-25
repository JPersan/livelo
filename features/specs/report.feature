#language: pt

Funcionalidade: Report Automação
    Eu como QA da Livelo
    Quero gerar um report html da execução

@report
  Cenario: Usando O Report
    Dado que eu tenha um json de report
    Entao consigo gerar o html usando o build report