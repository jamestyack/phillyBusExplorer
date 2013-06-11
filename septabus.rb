#!/usr/bin/env ruby
require 'sinatra'
require 'rubygems'
require 'rest_client'
require 'json'
require 'set'
require 'mongo'

include Mongo

configure do
end

get '/septa/bus/:id' do
	RestClient.get "http://www3.septa.org/transitview/bus_route_data/#{params[:id]}"
end




