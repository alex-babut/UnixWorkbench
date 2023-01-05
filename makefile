all: Readme.md

Readme.md:
	touch Readme.md
	date +"%c" > Readme.md	
	cat guessinggame.sh | wc -l >> Readme.md
