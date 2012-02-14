filename = ARGV[0]

if File.exists?(filename)
  data  = File.open(filename, 'r+')
  seek = 0
  data.each do |line|
    if line =~/\bword\b/
      data.pos = seek
      line = line.gsub(/\bword\b/, 'inserted word')+"\n"
      data.puts line
      data.pos = seek + line.length
    end
    puts data.pos
    seek = data.pos 
  end
  data.close
else
  puts "File #{filename} does not exist"
end
