

file_in = open("/usr/share/dict/words", "r")
file_out = open("newfile.txt","w")
for line in file_in:
	if len(line) == 11:
		file_out.write(line);
file_out.close();
file_in.close();
		

