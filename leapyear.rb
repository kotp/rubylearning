def leap_year(year)
  isleap = false
  if (year%4  == 0)
    isleap = true
    if (year%100 == 0)
      isleap = false
      if (year%400 == 0)
        isleap = true
      end
    end
  end
  isleap
end

year = 2004

minutes = 365*24*60
minutes = minutes + (24*60) if leap_year(year)

puts "Year #{year} has #{minutes} minutes\n"
