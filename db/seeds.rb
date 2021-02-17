# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'somequotes.csv'))

csv = CSV.parse(csv_text, col_sep:"|", :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|

   q = Quote.new

   q.content = row['content']
   q.author = row['author']
   q.language = row['language']

   q.save

   puts "#{q.content} saved"

end

puts "There are now #{Quote.count} rows in the Quotes table."
