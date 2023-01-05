all: README.md

README.md:
	touch README.md
	date +"%c" > README.md	
	cat guessinggame.sh | wc -l >> README.md
