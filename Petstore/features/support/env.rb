# frozen_string_literal: true

require 'rspec'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'yaml'
require 'faker'
require 'net/http'
require 'pry'
require 'report_builder'

require_relative '../../fixtures/factories/criar_usuario_factory.rb'
require_relative '../../fixtures/factories/criar_pet_factory.rb'
require_relative '../../fixtures/factories/fazer_pedido_factory.rb'

ENV['ENV'] = 'local' unless ENV.key? 'ENV'
ENVIRONMENT = YAML.load_file('./config/environment.yml')[ENV['ENV']]
