my_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Argument entered is : #{env.to_s}"]] }

puts my_rack_proc.call({ARGV[0],""})