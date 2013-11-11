require 'csv'
require_relative 'aprime'

csv_data = File.read("./data/classifer.csv")
csv = CSV.parse(csv_data, :headers => false)
data_set = []
csv.each do |row|
  data_set.push( Observation.new(row[0], row[1]) )
  #puts "#{row[0]}, #{row[1]}"
end

#puts data_set.to_s
aprime = APrime.new(data_set)

puts "A' = #{aprime.aprime}"
puts "TP = #{aprime.true_pos}"
puts "All= #{aprime.count_pairs}"
