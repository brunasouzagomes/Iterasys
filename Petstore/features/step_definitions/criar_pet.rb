# frozen_string_literal: true

Dado('que o usuario deseja cadastrar os pets dos seus clientes.') do
end

Quando('preencher os campos {string} e {string}.') do |nome, categoria|
  pet = CreatePet.preenche_dados(nome, categoria)
  @response = Pet.new.cadastro_pet(pet)
end

Entao('o pet e cadastrado com sucesso.') do
  expect(@response.code).to eq(200)
  expect(@response.message).to eq('OK')
end

Dado('que o usuario deseja atualizar o status do pet.') do
end

Quando('informar os parametros {string} e {string}') do |nome, status_pet|
  atualiza = CreatePet.update_dados(nome, status_pet)
  @response = Pet.new.update_pet(atualiza)
end

Entao('o status do pet e alterado com sucesso.') do
  expect(@response.code).to eq(200)
  expect(@response.message).to eq('OK')
end
