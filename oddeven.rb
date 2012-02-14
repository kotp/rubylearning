collection = [12, 23, 456, 123, 4579]
collection.each do |i|
  puts i%2 == 0 ? "#{i} is even" : "#{i} is odd"
end
