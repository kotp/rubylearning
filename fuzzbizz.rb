100.times do |i|
  if ((i+1)%3 == 0 && (i+1)%5 ==0)
    puts "FuzzBizz"
  elsif (i+1)%5 == 0
    puts "Fuzz"
  elsif (i+1)%3 == 0
    puts "Bizz"
  else
    puts i+1
  end
end
