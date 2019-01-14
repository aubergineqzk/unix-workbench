all: README.md

README.md:
	echo '# the Unix Workbench Assignment - Guessing Game \n' > README.md
	echo '* Ran at: $(shell date +%Y-%m-%d:%H:%M:%S) \n' >> README.md
	echo '* There are $(shell wc -l < guessinggame.sh) lines in guessinggame.sh' >> README.md