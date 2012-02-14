new_dir = 'tmp'
work_dir = Dir.pwd
puts "Current working directory: #{work_dir}"

unless Dir.exists?(new_dir)
  Dir.mkdir(new_dir)
  puts "Created new directory #{new_dir} in #{work_dir}"
else
  puts "Directory #{new_dir} already exists"
end

Dir.chdir(new_dir)
cur_dir = Dir.pwd
puts "Changed working directory to: #{cur_dir}"

#puts "Directory entries:\n"
#Dir.foreach(cur_dir) do |entry|
#  puts "#{entry}\n"
#end

Dir.chdir(work_dir)
cur_dir = Dir.pwd
puts "Changed working directory back to: #{cur_dir}"

Dir.rmdir(new_dir)
puts "Deleted #{new_dir} in #{cur_dir}"
