# project-system (c) Ian Dennis Miller

install:
	python setup.py install

dev:
	pip install -r .requirements-dev.txt

requirements:
	pip install -r requirements.txt

clean:
	rm -rf build dist *.egg-info
	find . -name '*.pyc' -delete
	find . -name __pycache__ -delete

docs:
	sphinx-build -b html docs build/sphinx

test:
	tox -c .tox.ini

release:
        python setup.py sdist bdist_wheel
        twine upload dist/*

.PHONY: clean install test docs release dev requirements
