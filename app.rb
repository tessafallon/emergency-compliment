require 'bundler'
Bundler.require
require './lib/compliment'

class Compliments < Sinatra::Application
  get '/compliment' do
    new_compliment = Compliment.new
    @my_image = new_compliment.image
    @my_message = new_compliment.message
    erb :compliment
  end
end

