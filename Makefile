.PHONY: install format lint test deploy all

install:
	@echo "Upgrade Pip and Installing packages from requirements.txt"
	pip install --upgrade pip && pip install -r requirements.txt
format:
    #format code
lint:
    #flake8 or pylint
test:
    #test
deploy:
    #deploy
all: install lint test deploy
