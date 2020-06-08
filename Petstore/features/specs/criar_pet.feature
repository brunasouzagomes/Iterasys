#language: pt
#utf-8

Funcionalidade: Validar a criacao dos pets Snoopy, Bichento e Perry no sistema

@criar_pet
Esquema do Cenario: Criar pets no sistema PetStore.
    Dado que o usuario deseja cadastrar os pets dos seus clientes.
    Quando preencher os campos "<nome>" e "<categoria>".
    Entao o pet e cadastrado com sucesso.
      
Exemplos:

| nome    | categoria|
| Snoopy  | doggie   |
| Bichento| cat      |
| Perry   | clatypus |


@atualiza_status
Esquema do Cenario: Atualizar status do pet no sistema.
    Dado que o usuario deseja atualizar o status do pet.
    Quando informar os parametros "<nome>" e "<status_pet>"
    Entao o status do pet e alterado com sucesso.

Exemplos:

| nome     | status_pet  |
| Snoopy   | approved    |
| Bichento | delivered   |
| Perry    | approved    |