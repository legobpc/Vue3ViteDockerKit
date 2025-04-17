#!/bin/bash

# If package.json doesn't exist, initialize a new Vue 3 project
if [ ! -f /app/package.json ]; then
  echo "⚙️ Creating a new Vue 3 project..."

  npm create vite@latest tmp-app -- --template vue --yes

  # Copy generated project files to the current directory
  cp -r tmp-app/* tmp-app/.* . 2>/dev/null || true
  rm -rf tmp-app

  echo "📦 Installing dependencies..."
  npm install

  echo "➕ Installing Vite as a dev dependency..."
  npm install -D vite
fi

# Start the development server
echo "🚀 Starting Vite dev server"
npx vite --host
