require 'bundler/setup'
# Bundler.require :default
Bundler.require

require 'sinatra'
# p Sinatra

class Application < Sinatra::Base
  get '/healthcheck' do
    content_type :json
    {health: :ok}.to_json
  end
end


Application.run! if __FILE__ == $0
