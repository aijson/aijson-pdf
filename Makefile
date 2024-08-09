type:
	pyright aijson_pdf

test:
	pytest aijson_pdf

test-no-skip:
	pytest --disallow-skip

test-fast:
	pytest -m "not slow" aijson_pdf

lint:
	ruff check --fix

format:
	ruff format

all: format lint type test-fast
