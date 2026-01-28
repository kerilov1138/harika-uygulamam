#!/usr/bin/env sh

# Minimal gradlew script to trigger build in GitHub Actions environment
# where gradle is pre-installed.
if command -v gradle >/dev/null 2>&1; then
  gradle "$@"
else
  echo "Error: gradle command not found in PATH."
  exit 1
fi