require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/" do
    @pltext = PigLatinizer.new(params["input_text"])

    erb :piglatinized
  end

end
