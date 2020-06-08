# frozen_string_literal: true

class Pet
  include HTTParty

  base_uri ENVIRONMENT['HML']
  format :json
  headers 'Content-Type' => 'application/json'

  def initialize
    @authorization = { 'authorization': 'Bearer 42df3200-105c-4b62-947f-de4045ce7aeb' }
  end

  def cadastro_pet(body)
    self.class.post('/v2/pet', headers: @authorization, body: body.to_json)
  end

  def update_pet(body)
    self.class.put('/v2/pet', headers: @authorization, body: body.to_json)
  end
end
