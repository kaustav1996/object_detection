from os import listdir
from os.path import isfile, join
from os import system
onlyfiles = [f.split(".")[0] for f in listdir("./") if isfile(join("./", f))]
no_repeat = list(set(onlyfiles))
for x in no_repeat:
	if onlyfiles.count(x)==1 and x!='file':
		system("rm "+x+".*")
		
