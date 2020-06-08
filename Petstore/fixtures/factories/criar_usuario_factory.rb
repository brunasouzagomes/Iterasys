# frozen_string_literal: true

class CreateUser
  def self.preenche_formulario(username, firstname)
    endpoint = File.read('fixtures/templates/criar_usuario.json')
    campos = JSON.parse(endpoint)
    campos['username'] = username
    campos['firstName'] = firstname
    campos['lastName'] = Faker::Name.last_name
    campos['email'] = Faker::Internet.free_email(name: campos['username'] = username)
    campos['password'] = Faker::Number.number(digits: 6)
    campos['phone'] = Faker::PhoneNumber.cell_phone
    campos['userStatus'] = 0
    campos
  end
end
