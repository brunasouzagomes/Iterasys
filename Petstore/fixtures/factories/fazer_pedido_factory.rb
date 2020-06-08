# frozen_string_literal: true

class CreateOrder
  def self.preenche_order(_username, codigo, _nome_do_pet, qtde)
    endpoint = File.read('fixtures/templates/criar_pedido.json')
    order = JSON.parse(endpoint)
    order['petId'] = codigo
    order['quantity'] = qtde
    order
  end
end
