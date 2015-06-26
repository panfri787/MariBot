require 'sinatra'
require 'json'

post '/' do
	json = JSON.parse request.body.read
	puts json["message"]
end

