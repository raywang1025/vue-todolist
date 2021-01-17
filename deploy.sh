#!/usr/bin/env sh

# stop script when error
set -e

# build
npm run build

# go to dir
cd dist

git init
git add -A
git commit -m 'deploy'

# deploy to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:raywang1025/vue-todolist.git master:gh-pages

cd -