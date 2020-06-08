# frozen_string_literal: true

class User
  include HTTParty

  base_uri ENVIRONMENT['HML']
  format :json
  headers 'Content-Type' => 'application/json'

  def initialize
    @token = { 'api_key': 'special-api_key' }
  end

  def cadastro_user(body)
    self.class.post('/v2/user', headers: @token, body: body.to_json)
  end
end
