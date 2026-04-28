#!/bin/bash

echo "Starting initialization for Blowfish..."

# 1. Check for Hugo
if ! command -v hugo &> /dev/null; then
    echo "Hugo not found. Installing via Homebrew..."
    brew install hugo
else
    echo "Hugo is already installed."
fi

# 2. Initialize Git if not already done
if [ ! -d ".git" ]; then
    echo "Initializing Git repository..."
    git init
fi

# 3. Add Blowfish theme as a submodule
if [ ! -d "themes/blowfish" ]; then
    echo "Adding Blowfish theme submodule..."
    git submodule add https://github.com/nunocoracao/blowfish.git themes/blowfish
else
    echo "Blowfish theme already exists."
fi

# 4. Make scripts executable
chmod +x rebuild.sh init.sh

echo "Done! You can now run ./rebuild.sh to build your site or 'hugo server' to preview it."
