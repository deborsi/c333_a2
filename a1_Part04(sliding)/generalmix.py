
generals = open('generals', 'r')

for line in generals:
	l = line.strip().split(' ')
	if len(l) > 1:
		#print(l)	
		f = l[0].strip()
		s = l[-1].strip()

		fl = f.lower()
		sl = s.lower()
		
		fu = f.upper()
		su = s.upper()

		fs = f.swapcase()
		ss = s.swapcase()

		f_list = [f,fl,fu,fs]

		s_list = [s,sl,su,ss]

		for fname in f_list:
			for sname in s_list:
				print(fname + ' ' + sname)
				print(sname + ' ' + fname)

		

generals.close()
