install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest test_gcli.py
	python -m pytest -vv --cov=hellotest_hello.py
	#python -m pytest --nbval notebook.ipynb

lint:
	pylint --disable=R,C, hello.py
	
format:
	black *.py

all: install lint test