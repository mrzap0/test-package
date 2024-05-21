#!/bin/bash
set -e

mkdir -p dist
cd dist

echo "Compiling typscript..."
npx tsc --pretty --declaration --declarationMap --sourceMap --outDir src ../src/index.ts

echo "Packaging..."
cp ../package.json .
cp -R ../bin .
rm -f *.tgz
npm pack
