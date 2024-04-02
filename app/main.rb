class Application < Sinatra::Base
  get '/healthcheck' do
    content_type :json
    {health: :ok}.to_json
  end


  post '/google' do

    puts '-- before scheduling background job'
    GooglerJob.perform_async('https://google.com')
    puts '-- after scheduling background job'

  end
end


Application.run! if __FILE__ == $0
