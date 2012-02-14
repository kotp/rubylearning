quiz = [0,0,0,1,0,0,1,1,0,1]
puts "The number of participants who did not attempt Quiz 1 is #{quiz.length-quiz.count{|x|x==1}} out of #{quiz.length} total participants"
