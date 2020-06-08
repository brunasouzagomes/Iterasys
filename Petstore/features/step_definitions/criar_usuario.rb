# frozen_string_literal: true

Dado('que o cliente deseja utilizar a loja.') do
end

Quando('preencher o {string}, {string} e os demais campos.') do |username, firstname|
  formulario = CreateUser.preenche_formulario(username, firstname)
  @response = User.new.cadastro_user(formulario)
end

Entao('o usuario e cadastrado com sucesso.') do
  expect(@response.code).to eq(200)
  expect(@response.message).to eq('OK')
end
