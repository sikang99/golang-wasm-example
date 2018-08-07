#
# Makefile for WASM by Stoney
#
all: usage

usage:
	@echo ""
	@echo "usage: make [clean:1|build:2|run:3]"
	@echo ""

edit-readme er:
	vi README.md

edit-make em:
	vi Makefile

# copy a new one from the new version of go compiler
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
	@make clean
	git add .gitignore README.md Makefile run.sh public/wasm_exec.js plus-one/ fogleman_ellipse/
	git commit -m "Modify contents"
	git config credential.helper store
	git push https://github.com/sikang99/golang-wasm-example.git
