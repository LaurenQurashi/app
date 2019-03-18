require 'sinatra'

get '/' do # this is our main webpage, our homepage if you will. 
  "Hello World"
end

get '/secret' do
  "tis a secret"
end

get '/webs' do
  "webbo"
end

get '/cat' do #/cat is the extention on our home directory.
  erb(:index) #seperates our CSS from our ruby.
end
