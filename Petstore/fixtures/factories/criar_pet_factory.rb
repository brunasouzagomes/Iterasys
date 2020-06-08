# frozen_string_literal: true

class CreatePet
  def self.preenche_dados(nome, categoria)
    criar = File.read('fixtures/templates/criar_pet.json')
    dados = JSON.parse(criar)
    dados['category']['name'] = categoria
    dados['name'] = nome
    dados
  end

  def self.update_dados(nome, status_pet)
    read = File.read('fixtures/templates/altera_pet.json')
    update = JSON.parse(read)
    update['category']['name'] = nome
    update['status'] = status_pet
    update
  end
end
