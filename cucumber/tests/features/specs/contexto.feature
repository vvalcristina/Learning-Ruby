#language: pt

Funcionalidade: Trabalhar com contexto.

Contexto:
Dado que eu tenha 10 laranjas na bolsa.

Cenario: Comprar laranja.
Quando eu coloco 2 laranjas na bolsa
Então eu verifico se o total de laranjas na bolsa é 12.

Cenario: Vender laranja.
Quando eu tiro 2 laranjas na bolsa
Então eu verifico com quantas laranjas eu fiquei na bolsa