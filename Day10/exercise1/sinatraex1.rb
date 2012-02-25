require 'sinatra'
get '/' do
  erb :ex1main
end

post '/display' do
  tmpstr = params[:post][:thestring]
  params[:post][:thestring] = tmpstr.reverse
  erb :ex1result
end