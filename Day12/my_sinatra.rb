require 'sinatra'
require './my_middleware'
use MyMiddleware::Hello
get '/' do
  "Hello Ruby participants from around the globe!"
end