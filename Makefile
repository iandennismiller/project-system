# project-system (c) Ian Dennis Miller

SHELL=/bin/bash
MOD_NAME=project_system
TEST_CMD=nosetests -w $(MOD_NAME) -c etc/tests.cfg --with-coverage --cover-package=$(MOD_NAME)

install:
	python setup.py install

dev:
	pip install -r requirements-dev.txt

clean:
	rm -rf build dist *.egg-info
	find . -name '*.pyc' -delete
	find . -name __pycache__ -delete

docs:
	rm -rf build/sphinx
	sphinx-build -b html docs build/sphinx

watch:
	watchmedo shell-command -R -p "*.py" -c 'date; $(TEST_CMD); date' .

test:
	$(TEST_CMD)

tox:
	tox

release:
	# first: python setup.py register -r https://pypi.python.org/pypi
	python setup.py sdist upload -r https://pypi.python.org/pypi

# create a homebrew install script
homebrew:
	bin/poet-homebrew.sh
	cp /tmp/project-system.rb etc/project-system.rb

.PHONY: clean install test watch docs release tox dev homebrew
