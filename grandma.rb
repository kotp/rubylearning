loop {
  print "You enter: "
  input = gets.chomp
  break if input.eql?('BYE')
  if input.eql?(input.upcase)
    year = 1930+rand(21).to_i
    puts "Grandma responds: NO, NOT SINCE #{year}!"
  else
    puts "Grandma responds: HUH?!SPEAK UP, SONNY!"
  end
}