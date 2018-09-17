#language: pt

Funcionalidade: Utilizar o verbo GET

Cenario: Realizar uma requisição GET com sucesso

  Dado que tenho um endpoint do github
  Quando realizar uma requisição GET para github
  Entao retorna os dados de usuario
  E o status code '200'
