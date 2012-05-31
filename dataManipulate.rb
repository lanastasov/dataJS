# Extracts all daily data from the file
File.open("data.txt","w") do |data|
  File.open("dailyData.js","r") do |file|
	puts file
	arr = []
	cnt = 0
	more = 0
	file.each do |line|


	  if cnt == 1 and more == 0 and line !~ /\]/ and line !~ /0,0,0,/
		   data.puts line.gsub(/\s+/,'').gsub(/\/\/.*/, '')
		   #data.puts line.gsub(/\/\/.*/, '')
	  end

	  if line =~ /\[/
		cnt = 1;
	  end

	  if line =~ /\]/
		  cnt = 0;
		  more = 1
	  end
	end
  end
end
