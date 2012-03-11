require 'mongo'
db = Mongo::Connection.new('staff.mongohq.com',10074).db("contacts")
auth = db.authenticate('rvanbran', 'm33rL3r3n___')

coll = db.collection("names")

#create a hash to be used to insert the record (document)
doc = {:fname => 'Takashi', :lname => 'Hori', :gender => 'm', :country => 'Japan'}
coll_id = coll.insert(doc)

doc = {:fname => 'Vanessa', :lname => 'Dekker', :gender => 'f', :country => 'Netherlands'}
coll_id = coll.insert(doc)

doc = {:fname => 'Ben', :lname => 'Jones', :gender => 'm', :country => 'Canada'}
coll_id = coll.insert(doc)

#Update the record using the object ID we got back from the insert
#coll.update( { :_id => coll_id }, '$set' => { :weight => 60 } )

