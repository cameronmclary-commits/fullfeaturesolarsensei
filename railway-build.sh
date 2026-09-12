#!/bin/bash
set -e

# Extract tar file if it exists
if [ -f "workspace-cf2c039e-4fe9-46e3-b870-90c320fe86b6 (1).tar" ]; then
  echo "Extracting tar archive..."
  tar -xf "workspace-cf2c039e-4fe9-46e3-b870-90c320fe86b6 (1).tar"
  
  # If extraction created a folder, move contents up
  if [ -d "fullfeature" ]; then
    echo "Moving extracted files to root..."
    cp -r fullfeature/* .
    cp -r fullfeature/.[!.]* . 2>/dev/null || true
    rm -rf fullfeature
  fi
  
  # Remove tar file
  rm "workspace-cf2c039e-4fe9-46e3-b870-90c320fe86b6 (1).tar"
  echo "Extraction complete"
fi

# Continue with normal build
echo "Installing dependencies..."
npm install || bun install

echo "Building Next.js app..."
npm run build
