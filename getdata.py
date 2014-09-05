import re
import csv

file= open("trial.txt")
trial=[]
for line in file:
    trial.append(re.split("\s{2,}",line)) ##split by multiple white space characters.

flattened  = [val for sublist in trial for val in sublist] ##flatten the list of lists.

for i in range(len(flattened)):
    if "\n" in flattened[i]:
            flattened[i]=flattened[i].strip()

for i in range(len(flattened)):
    flattened[i]=re.sub("\W{3,}","",flattened[i])		

while '' in flattened:
	flattened.remove('')
	
pattern = ["Level,", "Location","Position","Name of Incumbent","Type of","Pay","Grade, or","Tenure","Expires","Appt.","Plan"]

for i in range(len(pattern)):
	while pattern[i] in flattened:
		flattened.remove(pattern[i])

ind=[]		
for i in range(len(flattened)):
	if re.search('[A-Z]{4,}\s?[A-Z]*\s?[A-Z]*\s?[A-Z]*', flattened[i])!=None:
			ind.append(flattened.index(flattened[i]))
			
##Current script##
headers=["Branch", "Department","Sub-Department","Location", "Position", "Name", "Apt_Type", "Pay_Plan", "Lvl_grade_pay", "Tenure", "Expiration", "Additional Note"]
filename = "appointments.csv"
f = open(filename, "w+b")
writer = csv.writer(f)
writer.writerow(headers)

##Trying something else:
file.seek(0)
for line in file:
	if ("Level" in line)==False and ("Location" in line)==False and ("Appt." in line)==False and re.search('-{2,}',line)==None and line!='\n':
		if "\n" in line:
			the_list=line.strip()
		the_list=re.split("\s{2,}",the_list) ##split by multiple white space characters
		#the_list.insert(0, "Legislative") ##Insert Branch as legislative first
		if '' in the_list:
			pass
		else:
			if "LEGIS" in the_list[0]:
				pass
			else:
				the_list.insert(0, '')
				if re.search('[A-Z]{4,}\s?[A-Z]*\s?[A-Z]*\s?[A-Z]*', the_list[1])==None:
					the_list.insert(0, '')
					the_list.insert(0, '')
			writer.writerow(the_list)

f.close()

#f = open(filename, "a+b")
#writer = csv.writer(f)
#f.seek(0)
#lines=f.readlines()
#current_line_index=0
#for line in file:
#	next_line=lines[current_line_index+1]
#	current_line_index+=1
	


		
		


