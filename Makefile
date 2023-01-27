build:
	docker build -t flaky .

run: build
	docker run flaky

bash: build
	docker run -it flaky bash

TEST_COUNT = 100
TEST_CMD = python -m pytest --tb=no --count=${TEST_COUNT} .
OUT_DIR = _out

test: build
	mkdir -p ${OUT_DIR}
	for f in .env* ; do \
            echo $$f ; \
            docker run --env-file $$f flaky ${TEST_CMD} | tee ${OUT_DIR}/$$(date +%Y%m%dT%H%M%S).$$f | tail -n 1; \
        done

clean:
	rm ${OUT_DIR}/*

.PHONY: test
