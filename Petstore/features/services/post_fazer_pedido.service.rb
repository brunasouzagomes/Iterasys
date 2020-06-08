# frozen_string_literal: true

class Order
  include HTTParty

  base_uri ENVIRONMENT['HML']
  format :json
  headers 'Content-Type' => 'application/json'

  def initialize
    @authorization_order = { 'api_key': 'special-api_key' }
  end

  def cadastro_order(body)
    self.class.post('/v2/store/order', headers: @authorization_order, body: body.to_json)
  end
  end
