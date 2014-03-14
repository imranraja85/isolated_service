require 'sinatra'
require File.expand_path(File.join('lib', 'isolated_service', 'tss', 'tss'))

run Rack::URLMap.new "/" => IsolatedService::Tss::Server
