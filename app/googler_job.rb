class GooglerJob
  include Sidekiq::Job

  def perform url

    res = Curl.get(url)
    File.write './tmp/google.html', res.body

  end

end
