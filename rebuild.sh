moul export
cp ./docs/CNAME ./dist/
cp ./docs/.nojekyll ./dist/
rm -rf ./docs/
mv ./dist/ ./docs/
