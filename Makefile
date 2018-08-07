#
# Makefile
#
all: usage

usage:
	@echo ""
	@echo "usage: make [clean|build|run]"
	@echo ""

edit-readme er:
	vi README.md

edit-make em:
	vi Makefile

update:
	cp $(GOROOT)/misc/wasm/wasm_exec.js public/

clean:
	echo "clean .wasm files"
	rm ./*/*.wasm 1>/dev/null 2>&1

build b:
	./run.sh

run r:
	http-server . # npm install http-server -g
