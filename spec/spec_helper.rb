$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'thwip'
require 'webmock/rspec'

ENV['PUBLIC_KEY']='secret'
ENV['PRIVATE_KEY']='super-secret'
ENV['BASE_URL']='https://gateway.marvel.com:443/v1/public'

