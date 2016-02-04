require 'rubygems'
require 'csv'
require 'mongo'

db   = Mongo::Client.new(['127.0.0.1:27017'], :database => 'redrecord')
data = CSV.read("LynchingRecords.csv", :headers => true)
 
data.each do |row|
  h = row.to_hash
  puts h
  result = db[:lynchings].insert_one(h)
end
