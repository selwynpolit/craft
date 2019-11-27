git submodule init
git submodule update
rm -rf .git
rm -rf frontend/.git
rm -rf frontend/gulpfile.babel.js
rm -rf frontend/_README
cp -r frontend/. ./
rm -rf frontend
npm install
composer install
cp .env.example .env

 cp -r storage.example/* storage

ddev start
ddev import-db --src=./db.sql.gz
