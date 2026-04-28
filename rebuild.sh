#!/bin/bash

# Clean up existing docs
rm -rf docs/

# Build the site using Hugo
# The --destination flag ensures it outputs to docs/ for GitHub Pages
hugo --destination docs
