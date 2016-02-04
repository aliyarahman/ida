
require 'csv'

namespace :import_from_csv do
  task :create_lynching_records => :environment do
    csv_text = File.read('data/LynchingRecords.csv')
	csv = CSV.parse(csv_text, :headers => true)
	csv.each do |row|
            Lynching.create!(row.to_hash)
	end
  end
end 
