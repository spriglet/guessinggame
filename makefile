README.md:
	touch README.md
	echo "## Guessing Game" > README.md
	echo "- This file was created on:" >> README.md
	date  >> README.md
	echo "- The guessinggame.sh file contains this many lines of code:" >> README.md
	cat guessinggame.sh | wc -l >> README.md 
