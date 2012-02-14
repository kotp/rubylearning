1.upto(100) do |i|
  puts i%3 == 0 ? i%5 == 0 ? "FizzBuzz" : "Fizz" : i%5 ==0 ? "Buzz" : i
end
