#!/bin/bash

echo "Building the Hugo site..."
hugo

echo "Deploying to GitHub Pages..."
cd public

echo "Pulling the latest changes from gh-pages..."
git pull --rebase origin gh-pages

echo "Staging changes..."
git add .

echo "Committing changes..."
git commit -m "Deployed site update."

echo "Pushing to GitHub..."
git push origin gh-pages

echo "Deployment complete!"
cd ..
