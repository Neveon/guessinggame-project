all: README.md

README.md:
	@echo "guessinggame.sh\n" >> README.md
	@date >> README.md
	@echo "\n" >> README.md
	@cat guessinggame.sh | wc -l >> README.md
	@cat README.md
