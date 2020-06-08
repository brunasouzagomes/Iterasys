# frozen_string_literal: true

Dado('que o cliente deseja realizar uma compra.') do
end

Quando('informar o {string} do cliente, o {string}, {string} e a {string}.') do |username, codigo, nome_do_pet, qtde|
  order1 = CreateOrder.preenche_order(username, codigo, nome_do_pet, qtde)
  @response = Order.new.cadastro_order(order1)
end

Entao('o pedido e realizado com sucesso.') do
  expect(@response.code).to eq(200)
  expect(@response.message).to eq('OK')
end
