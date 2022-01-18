clean: clean-build clean-pyc clean-test clean-docs ## remove all build, test, coverage and Python artifacts

clean-build: ## remove build artifacts
	rm -fr build/
	rm -fr dist/
	rm -fr .eggs/
# 	find ./docs ./its_anpr ./tests -name '*.egg-info' -exec rm -fr {} +
# 	find ./docs ./its_anpr ./tests -name '*.egg' -exec rm -f {} +
# 	find ./docs ./its_anpr ./tests -name '*.c' -exec rm -f {} +

clean-pyc: ## remove Python file artifacts
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

clean-test: ## remove test and coverage artifacts
	rm -fr .tox/
	rm -f .coverage
	rm -fr htmlcov/
	rm -fr .pytest_cache

clean-docs: # remove docs artifacts
	rm -fr docs/_build/
	rm -f docs/modules*
	find docs/ -name 'its_*' -exec rm -f {} +

install: ## install the package to the active Python's site-packages
	python3 setup.py install
