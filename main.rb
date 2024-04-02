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


  post '/google' do


    res = Curl.get("https://www.google.com/") {|http|
      http.timeout = 2
    }
    res.body
    File.write './tmp/google.html', res.body

  end
end


Application.run! if __FILE__ == $0
