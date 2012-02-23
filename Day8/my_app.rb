class MyApp
  def call(env)
    [200, {"Content-Type" => "text/html"}, [ARGV[0]]]
  end
end