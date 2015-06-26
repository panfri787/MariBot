require 'sinatra'
require 'json'

post '/' do
	json = JSON.parse request.body.read
	json["message"]
end

