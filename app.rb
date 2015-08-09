#!/usr/bin/env ruby

require 'sinatra'
require 'json'

get '/' do
  'Hello world!'
end

get '/version' do
  content_type :json
  data = { version: 0.1 }
  data.to_json
end
