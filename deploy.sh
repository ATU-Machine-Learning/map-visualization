#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# nav into build output dir
cd dist

# place nojekyll to bypass gh pages jekyll processing
echo > .nojekyll

git init
git checkout -B main
git add -A
git commit -m 'deploy'
git push -f git@github.com:ATU-Machine-Learning/ATU-Machine-Learning.github.io.git main

cd -