class MyRackApp
  def call(env)
    request    = Rack::Request.new(env)
    in_string  = request.params['in_string']
    out_string = in_string.reverse

    Rack::Response.new.finish do |response|
      response['Content-Type']  = 'text/plain'
      response.status           = 200
      response.write "reversed string: " + out_string
    end
  end
end