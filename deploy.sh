#!/bin/bash
# Build and deploy Hugo site
hugo

cd public
git init
git remote add origin https://github.com/BenWildgoose/benwildgoose.github.io.git
git add .
git commit -m "Deploy site $(date)"
git push -f origin main
cd ..
