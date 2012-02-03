###############################
# Times Table Text Formatting #
###############################

def multiplication_table(number, heading = '', decorate = false)
  table = ''
  num_length = (number*number).to_s.length
  row_length = number*(num_length+1)
  unless heading.empty?
    header_length = heading.length
    adjust_header = 0||((row_length-header_length)/2 if (row_length > header_length))
    table << " "*adjust_header+"#{heading}\n"
  end
    table << deco(row_length) if decorate
  (1..number).each do |col|
    (1..number).each do |row|
      table << " %#{num_length}d" %(col*row)
    end
    table << "\n"
  end
    table << deco(row_length) if decorate
  table
end

def deco(length)
  " "+"="*length+"\n"
end

tab1 = multiplication_table(0, 'Times Table to 0', true)
tab2 = multiplication_table(1, 'Times Table to 1', true)
tab3 = multiplication_table(20, '', false)

puts tab1
puts
puts tab2
puts
puts tab3
