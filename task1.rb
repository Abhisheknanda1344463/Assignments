file_name = ARGV.first
current_file = open(file_name)
puts "Here is your file #{file_name}"
content = current_file.read
puts " Reading..."
puts content

words = content.split(" ")
array = []
words.each do|word|
  if(word.length>3)
    array.push(word)
  end
end
a=array.sort()
data = a.join(" ")

puts"now i m going to write this sorted file into another"
file_1 = open("write_file.txt",'w')
file_1.write(data)

#close file
file_1.close()
