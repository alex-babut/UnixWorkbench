all: README.md

README.md:
	touch README.md
	echo "Date modified: " > README.md
	date +"%c" >> README.md	
	echo "Line count:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
