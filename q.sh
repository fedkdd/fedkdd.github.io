#!/bin/bash

# Define the redirect HTML content
REDIRECT_HTML='<!DOCTYPE html>
<html lang="en-US">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="refresh" content="0; url=https://fedkdd.github.io/fedkdd2025/">
  <title>Redirecting to FedKDD 2025</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5">
  <meta name="description" content="FedKDD: International Joint Workshop on Federated Learning for Data Mining and Graph Analytics (FedKDD 2025)">
  <meta name="author" content="FedKDD Organizers">
</head>
<body>
  <p>Redirecting to FedKDD 2025 workshop page...</p>
  <p>If you are not redirected automatically, please click <a href="https://fedkdd.github.io/fedkdd2025/">here</a>.</p>
</body>
</html>'

# Find all index.html files except the one in the root directory
for file in $(find . -path "./*/index.html" -type f); do
  echo "Updating $file"
  echo "$REDIRECT_HTML" > "$file"
done

# Update 404.html
echo "Updating 404.html"
echo "$REDIRECT_HTML" > "404.html"

echo "All files updated successfully!"