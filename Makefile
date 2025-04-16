PYTHON=poetry run python
SRC_DIR=src
MAIN_MODULE=memory_game.main

.PHONY: install update lock run clean

install:
	poetry install

update:
	poetry update

lock:
    poetry lock

run:
	PYTHONPATH=$(SRC_DIR) $(PYTHON) -m $(MAIN_MODULE)

clean:
	poetry env remove python || echo "No virtual environment to remove."
	find . -type f -name '*.pyc' -delete
	find . -type d -name '__pycache__' -exec rm -r {} +
