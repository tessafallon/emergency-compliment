require 'bundler'
Bundler.require
require './lib/compliment'

class Compliments < Sinatra::Application
get '/compliment' do
var = Compliment.new
var.message
var.image
	erb :compliment
end

end

