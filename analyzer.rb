#################
# Text analyzer #
#################
 
filename = ARGV[0] || 'text.txt'
 
# I guess I could make the following 'prettier' if I listed count first...
info = { cc: {description: "Character count", count: 0},
     cc_wos: {description: "Character count without spaces", count: 0},
         lc: {description: 'Line count', count: 1},
         wc: {description: 'Word count', count: 0},
         sc: {description: 'Sentence count', count: 0 },
         pc: {description: 'Paragraph count', count: 1},
    avg_wps: {description: 'Average words per paragraph', count: 0},
    avg_spp: {description: 'Average sentences per paragraph', count: 0}
    }
 
spaces = 0
 
if File.exists?(filename)
  data  = File.open(filename, 'r+')
  data.each_with_index do |line,index|
    info[:lc][:count] = index + 1
    split_blank = line.split(/ /)
    split_words = line.split(/[\s\']/)
    split_sentences = line.chomp.split(/[\.\!\?]/)
    spaces = spaces + split_blank.length
    info[:wc][:count] += split_words.length
    info[:sc][:count] += split_sentences.length
    info[:pc][:count] += + 1 if line =~ /^\s$/
  end
  info[:cc][:count] = data.pos
  info[:cc_wos][:count] = info[:cc][:count] - spaces
  info[:avg_wps][:count] = info[:wc][:count] / info[:sc][:count].round(1)
  info[:avg_spp][:count] = info[:sc][:count] / info[:pc][:count].round(1)
else
  puts "File #{filename} does not exist"
end
 
# Long way, with the formatting you want
puts "Character: #{info[:cc][:count]}, w/o spaces: #{info[:cc_wos][:count]}"
puts "Lines: #{info[:lc][:count]}, Words: #{info[:wc][:count]}"
puts "Sentences: #{info[:sc][:count]}, Paragraphs: #{info[:pc][:count]}"
puts "Average words per sentence: %.1f" % info[:avg_wps][:count]
puts "Average sentences per paragraph: %.1f" % info[:avg_spp][:count]
 
# Automated report through an enumeration
info.each_key do |stats|
  puts "#{info[stats][:description]}: #{info[stats][:count]}"
end