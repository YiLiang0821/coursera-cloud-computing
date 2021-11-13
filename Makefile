install-gcp:
	pip install --upgrade pip &&\
		pip install -r requirements-gcp.txt
install-aws:
	pip install --upgrade pip &&\
		pip install -r requirements-aws.txt

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello hello_test.py

all: lint test