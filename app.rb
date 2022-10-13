require 'sinatra'

LETTERS = Array('a'..'z')
def generate_short_url
  Array.new(6) { LETTERS.sample }.join
end

get '/:url' do
  "The URL is #{params[:url]}"
end
get '/' do
  "Send a POST request to register a new URL."
end
post '/' do
  ShortURL.save(generate_short_url, params[:url])
  "New URL added: localhost:4567/#{generate_short_url}\n"
end



