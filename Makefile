install:
  pip install --upgrade pip &&\
	  pip install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C,locally-disabled --ignore-patterns=test_.*?py *.py

all: install format lint 
