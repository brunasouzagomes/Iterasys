#language: pt
#utf-8

Funcionalidade: Validar a criação de pedido de venda.

@fazer_pedido
Esquema do Cenario: Criar usuarios no sistema PetStore.
    Dado que o cliente deseja realizar uma compra. 
    Quando informar o "<username>" do cliente, o "<codigo>", "<nome_do_pet>" e a "<qtde>".
    Entao o pedido e realizado com sucesso.
      
Exemplos:

| username| codigo           |nome_do_pet  |qtde |
| Ana     | 7751591531162804 |Perry        | 4   |
| Rodrigo | 7751591531162805 |Snoopy       | 5   |
| Tatiana | 7751591531162806 |Bichento     | 7   |