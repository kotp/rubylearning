###############################
# Times Table Text Formatting #
###############################

def multiplication_table(number, heading = '', decorate = false)
  table = ''
  num_length = (number*number).to_s.length
  row_length = number*(num_length+1)
  if heading != ''
    header_length = heading.length
    adjust_header = (row_length-header_length)/2
    table << " "*adjust_header+"#{heading}\n"
  end
  if decorate
    table << deco(row_length)
  end
  (1..number).each do |col|
    (1..number).each do |row|
      table << " %#{num_length}d" %(col*row)
    end
    table << "\n"
  end
  if decorate
    table << deco(row_length)
  end
  return table
end

def deco(length)
  return " "+"="*length+"\n"
end

tab1 = multiplication_table(9, 'Times Table to 9', true)
tab2 = multiplication_table(20, '', false)

puts tab1
puts
puts tab2
