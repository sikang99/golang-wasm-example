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

git-update gu:
	git add README.md Makefile run.sh public/wasm_exec.js plus-one/ fogleman_ellipse/
	git commit -m "Modify contents"
	git push 
