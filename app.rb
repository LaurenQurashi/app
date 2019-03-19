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

get '/random-cat' do #/cat is the extention on our home directory.
  @name = ["Keith", "Ian", "Greg"].sample # some code that randomises our stuff.
  erb(:index) #seperates our CSS from our ruby.
end

post '/named-cat' do #/cat is the extention on our home directory.
  p params
  @name = params[:name] # some code that randomises our stuff.
  erb(:index) #seperates our CSS from our ruby.
end

get '/cat-form' do
  erb :cat_form
end
