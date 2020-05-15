require 'sinatra'
  require 'json'

  set :port, 9090

  get '/' do
    { name: 'Jovan',
      description: 'Velanac',
      Url: request.url }.to_json
  end
