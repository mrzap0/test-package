#!/bin/bash
npx tsc index.ts
tar -czf test-package_1.0.0.tar.gz package.json index.js
