import re
import csv

file= open("condensedplum.txt")
			
##Current script##
headers=["Branch", "Department","Sub-Department","Location", "Position", "Name", "Apt_Type", "Pay_Plan", "Lvl_grade_pay", "Tenure", "Expiration", "Additional Note"]
filename = "appointments.csv"
f = open(filename, "w+b")
writer = csv.writer(f)
writer.writerow(headers)

##Trying something else:
file.seek(0)
the_list=[]
for line in file:
	##This line removes the category headers for level, location, etc. It also excludes lines of all ----- and blank lines
	if ("Level" in line)==False and ("Location" in line)==False and ("Appt." in line)==False and re.search('-{2,}',line)==None and line!='\n':
		##This part strips out the new line characters
		if "\n" in line:
			the_list.append(line.strip())


##Here we are creating a new list because we will be splitting the old list, thereby creating lists. 
new_list=[]
for i in range(len(the_list)):
	new_list.append(re.split("\s{2,}",the_list[i])) ##split by multiple white space characters
	#This removes blank list items.
	if [''] in new_list:
		new_list.remove([''])

#This part searches for the rest of people's titles and puts them at the end of the 
##previous line so all the info is on one line. 
##Important note: this loop excludes the first element of the list. In this case, "Legislative"
extra_list={}
for i in range(1,len(new_list)):
	if len(new_list[i])==1 and re.search('[A-Z]?[a-z]',new_list[i][0])!=None:
		#new_list[i-1].append(new_list[i][0])
		extra_list[i]=(new_list[i])

keylist=extra_list.keys()
keylist.sort()
for i in range(len(keylist)):
	#if keylist[i]!=keylist[i+1]-1:
	new_list[(keylist[i])-1].append(extra_list[keylist[i]][0])
	if keylist[i]==keylist[i-1]+1: 
		new_list[(keylist[i])-2].append(extra_list[keylist[i]][0])
	if keylist[i]==keylist[i-2]+2:
		new_list[(keylist[i])-3].append(extra_list[keylist[i]][0])

for i in range(len(new_list)):
	if new_list[i]==["LEGISLATIVE BRANCH"] or new_list[i]==["EXECUTIVE BRANCH"]:
		pass
	else:
		new_list[i].insert(0, '') ##Insert spaces for use later
		if re.search('[A-Z]{4,}\s?[A-Z]*\s?[A-Z]*\s?[A-Z]*', new_list[i][1])==None:
			new_list[i].insert(0, '') ##Insert more spaces for use later. 
			new_list[i].insert(0, '')
	if len(new_list[i])in [4,5,6] and re.search('[A-Z]?[a-z]',new_list[i][3])!=None:
		pass
	else:
		writer.writerow(new_list[i])

f.close()
	


		
		


