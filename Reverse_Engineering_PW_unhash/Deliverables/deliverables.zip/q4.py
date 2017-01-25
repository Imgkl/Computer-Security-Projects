import hashlib
import array
from sys import argv,exit

def main():
	if len(argv) < 2:
		print "Please Enter Desired Password:"
		print "Usage: %s <new password>" % (argv[0])
		exit(0)

	else:
		print "Applying patch..."
	try:
		f = open('32400129.program2.exe', 'r+b') 		
		sha1 = hashlib.sha1(argv[1]).hexdigest()	
		f.seek(0x1E034)
		f.write(sha1.decode("hex"))
		f.close()
		print "Patched! Your new password is:", (argv[1])
	except Exception, e:
		print "Error..."
		exit(1)

if __name__ == "__main__":
	main()