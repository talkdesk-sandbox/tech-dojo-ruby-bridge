# frozen_string_literal: true

require 'sinatra'
require 'json'

require_relative 'converters/create_ticket.rb'
require_relative 'gateways/external_api.rb'

before do
  content_type :json
end

after do
  response.body = JSON.dump(response.body)
end

get '/' do
  { 'message': 'Hello world!' }
end

post '/tickets' do
  data = JSON.parse request.body.read
  converted_data = CreateTicketConverter.new({ input: data }).convert
  ExternalApiGateway.new.create JSON.dump(converted_data)
end

put '/tickets/:ticket_id' do
  data = JSON.parse request.body.read
  converted_data = CreateTicketConverter.new({ input: data }).convert
  ExternalApiGateway.new.update JSON.dump(converted_data)
end

delete '/tickets/:ticket_id' do
  ExternalApiGateway.new.delete
end