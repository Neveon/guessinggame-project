all: README.md

README.md:
	@echo "guessinggame.sh" >> README.md
	@date >> README.md
	@cat guessinggame.sh | wc -l >> README.md
	@cat README.md
