#!/usr/bin/env bash

#echo "clean .wasm files"
#rm ./*/*.wasm 1>/dev/null 2>&1

for file in `ls`
do
    if [ -d $file ] && [ $file != "vendor" ] && [ $file != "public" ]; then
    	echo "build ./$file.wasm file..."
    	GOARCH=wasm GOOS=js go build -o $file/example.wasm $file/wasm.go
    fi
done

echo "build done."
echo ""

#http-server . # npm install http-server -g
