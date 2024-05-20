#!/bin/bash
npx tsc index.ts

mkdir -p dist
cd dist
cp ../index.js ../package.json .
npm pack
