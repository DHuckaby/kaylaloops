moul export
cp ./docs/CNAME ./dist/
cp ./docs/.nojekyll ./dist/
rm -rf ./docs/
mv ./dist/ ./docs/

# Automate fixed header
sed -i '' 's/\(header{[^}]*height:\)[0-9]*vh/\10vh/g' docs/index.html
