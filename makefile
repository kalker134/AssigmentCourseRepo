all: Clean_README Create_README

Clean_README:
	@ touch README.md
	@ rm README.md

Create_README:
	@ touch README.md
	@ echo "##Guess in game" >> README.md
	@ echo "" >> README.md
	@ date '+%d/%m/%Y_%H:%M:%S' >> README.md
	@ echo "" >> README.md
	@ echo "Number of code lines is :`wc -l guessinggame.sh`" >> README.md
