require 'sinatra'
require File.expand_path(File.join('lib', 'isolate_services', 'pricing', 'pricing'))

run Rack::URLMap.new "/" => IsolateServices::Pricing::Server
