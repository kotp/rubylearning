def prompt(text="Input")
  print "#{text} > "
  gets
end

def fizztest(number,divider,fizzword)
  (number % divider == 0) ? fizzword : ''
end

hsh = Hash.new()

input = 'a'
while not input.eql?(0)
  input = prompt('Fizz Number (0 to end)').chomp.to_i
  hsh[input] = prompt('Fizz Word').chomp unless input.eql?(0)
end

no = prompt('Count up to:').chomp.to_i

1.upto(no) do |i|
  fizzphrase = ''
  hsh.each_pair do |key,value|
    fizzphrase += fizztest(i,key,value)
  end
  puts fizzphrase.empty? ? i : fizzphrase
end
