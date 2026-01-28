#!/usr/bin/env sh
# GitHub Runner'da gradle komutu varsa onu kullanır, yoksa hata verir.
if command -v gradle >/dev/null 2>&1; then
  gradle "$@"
else
  echo "Gradle not found in path."
  exit 1
fi