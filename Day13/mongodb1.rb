require 'mongo'
conn = Mongo::Connection.new
#db = Mongo::Connection.new("localhost").db("rubylearning")
db = conn.db("rubylearning")

db.collection_names.each{ |name| puts name}

coll = db.collection("students")

#create a hash to be used to insert the record (document)
doc = {:name => 'Manisha', :dob => Time.now, :loves => ['english', 'marathi'], :weight => 62,
          :gender => 'f', :country => 'India'}

coll_id = coll.insert(doc)

#Update the record using the object ID we got back from the insert
coll.update( { :_id => coll_id }, '$set' => { :weight => 60 } )

