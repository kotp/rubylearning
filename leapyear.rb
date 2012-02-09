def leap_year(year)
  year%100 == 0 ? (year%400 ==0) : (year%4 == 0)
end

year = 2003

minutes = leap_year(year) ? (366*24*60) : (365*24*60)

puts "Year #{year} has #{minutes} minutes\n"
