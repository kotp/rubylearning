#################
# Text analyzer #
#################

filename = ARGV[0]

cc = cc_wos = lc = wc = sc = pc = avg_wps = avg_spp = 0
spaces = 0

if File.exists?(filename)
  data  = File.open(filename, 'r+')
  data.each_with_index do |line,index|
    lc = index
    split_blank = line.split(/ /)
    split_words = line.split(/\s/)
    split_sentences = line.split(/[\.\!\?]/)
    spaces = spaces + split_blank.length
    wc = wc + split_words.length
    sc = sc + split_sentences.length
    pc = pc + 1 if line =~ /^\s$/
  end
  cc = data.pos
  cc_wos = cc - spaces
  avg_wps = wc/sc.round
  avg_spp = sc/pc.round
else
  puts "File #{filename} does not exist"
end

puts "Character: #{cc}, w/o spaces: #{cc_wos}"
puts "Lines: #{lc}, Words: #{wc}"
puts "Sentences #{sc}, Paragraphs #{pc}"
puts "Average words per sentence #{avg_wps}"
puts "Average sentences per paragraph #{avg_spp}"
