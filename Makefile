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

1 clean:
	echo "clean .wasm files"
	rm ./*/*.wasm 1>/dev/null 2>&1

2 build b:
	./run.sh

3 run r:
	http-server . # npm install http-server -g

git-update gu:
	git add README.md Makefile run.sh public/wasm_exec.js plus-one/ fogleman_ellipse/
	git commit -m "Modify contents"
	git config credential.helper store
	git push https://github.com/sikang99/golang-wasm-example.git
