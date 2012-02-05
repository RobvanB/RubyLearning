require 'net/http'
require 'open-uri'
require 'hpricot'
require 'nokogiri'

def show_num(_text, _searchText)
  all_the = _searchText.scan(/the /i)
  puts _text +  " : " + all_the.length.to_s
end


#net/http example
url = URI.parse('http://satishtalim.github.com/webruby/chapter3.html')

Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  all_text = http.request(req).body

  show_num("net/http",http.request(req).body)
end


#open-uri example
uri = URI('http://satishtalim.github.com/webruby/chapter3.html')
res = Net::HTTP.get_response(uri)
show_num("open-uri", Net::HTTP.get(uri))

#Hpricot
page = Hpricot(open('http://satishtalim.github.com/webruby/chapter3.html'))
show_num("Hpricot", page.at(:html).inner_html)

#Nokogiri
doc = Nokogiri::HTML(open("http://satishtalim.github.com/webruby/chapter3.html"))
show_num("Nokogiri xpath", doc.xpath("*").text)
show_num("Nokogiri css", doc.css("*")[0].content)