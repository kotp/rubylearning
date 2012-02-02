########################################
#   This program is used to convert    #
# between Kelvin, Celsius & Fahrenheit #
########################################

K_abs = 0

def convert(unit,value)
  case unit
    when "c"
        k_value = value + 273.15
    when "f"
        k_value = (value + 459.67) * 5/9
    else
        k_value = value
    end
    c_value ||= k_value - 273.15
    f_value ||= k_value * 9/5 - 459.67
  return k_value,c_value,f_value
end

def desc
  puts "Give a K,C or F as second argument and\na number above absolute zero as first argument\neg. 289 K will convert from Kelvin 289 to Celsius and Fahrenheit.\nType \'exit\' to leave."
end

input = true
desc
while input != 'exit'
  input = gets.downcase.chomp
  value,unit = input.split(' ')
  value = value.to_f
  if unit =~ /[kcf]/
    k_value,c_value,f_value = convert(unit,value)
  else
    puts "You've not given a K, C or F as second argument\n"
  end
  if k_value > K_abs
    puts "%.2f K equals %.2f C equals %.2f F\n" %[k_value, c_value, f_value]
  else
    puts "You've given a value below absolute zero\n"
  end
end

