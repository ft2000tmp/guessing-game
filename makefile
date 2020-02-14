all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "### Guessing Game" > README.md
	echo "Generated on: ${shell date}\n" >> README.md
	echo "Number of lines in guessinggame.sh: ${shell wc -l < guessinggame.sh | egrep -o '[0-9]+'}\n" >> README.md

clean:
	rm README.md
