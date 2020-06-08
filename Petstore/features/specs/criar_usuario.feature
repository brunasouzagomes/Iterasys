#language: pt
#utf-8

Funcionalidade: Validar a criacao dos usuarios Ana Maria, Rodrigo Mendes e Tatiana Vasconcelos
   
@criar_usuario
Esquema do Cenario: Criar usuarios no sistema PetStore.
    Dado que o cliente deseja utilizar a loja.
    Quando preencher o "<username>", "<firstname>" e os demais campos.
    Entao o usuario e cadastrado com sucesso.
      
Exemplos:

| username| firstname  |
| Ana     | Maia       |
| Rodrigo | Mendes     |
| Tatiana | Vasconcelos|
