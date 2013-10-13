require 'sinatra'
require './zara.rb'

class MyApp < Sinatra::Base
	get '/' do
	"Hello, world"
	end
	
	get '/scrape/:store' do
		z = Zara.new
		z.scrape
	end
end
