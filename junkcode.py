#trial=[]
#for line in file:
#    trial.append(re.split("\s{2,}",line)) ##split by multiple white space characters.

#flattened  = [val for sublist in trial for val in sublist] ##flatten the list of lists.

#for i in range(len(flattened)):
#    if "\n" in flattened[i]:
#            flattened[i]=flattened[i].strip()

#for i in range(len(flattened)):
#    flattened[i]=re.sub("\W{3,}","",flattened[i])		

#while '' in flattened:
#	flattened.remove('')
	
#pattern = ["Level,", "Location","Position","Name of Incumbent","Type of","Pay","Grade, or","Tenure","Expires","Appt.","Plan"]

#for i in range(len(pattern)):
#	while pattern[i] in flattened:
#		flattened.remove(pattern[i])

#ind=[]		
#for i in range(len(flattened)):
#	if re.search('[A-Z]{4,}\s?[A-Z]*\s?[A-Z]*\s?[A-Z]*', flattened[i])!=None:
#			ind.append(flattened.index(flattened[i]))