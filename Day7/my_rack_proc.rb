require 'rack'

Rack::Handler::WEBrick

my_rack_proc = lambda{ |env| [200, {"Content-Type" => "text/plain"}, ["Hello. the time is #{Time.now}"]] }

Rack::Handler::WEBrick.run my_rack_proc, :Port => 8080

