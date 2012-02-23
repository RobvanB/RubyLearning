my_rack_proc = lambda {|env| [200, {"Content-Type" => "text/plain"}, ["Hello, the time is #{Time.now}"]] }
puts my_rack_proc.call({})

