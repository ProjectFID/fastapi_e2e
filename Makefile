.PHONY: install format lint test deploy all

install:
	@echo "Upgrade Pip and Installing packages from requirements.txt"
	pip install --upgrade pip && pip install -r requirements.txt
format:
	@echo "Checking code formats"
	black *.py lib_fapi/*.py
lint:
	@echo "Startin Pylint checks"
	pylint --disable=R,C *.py lib_fapi/*.py
test:
	@echo "Start running Unit Tests"
	python -m pytest -vv --cov=lib_fapi test_logic.py
deploy:
    #deploy
all: install lint test deploy
