#!/usr/bin/env bash
# Neha Couture - Catalog Version Control & Revert CLI Shortcut
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INTAKE_DIR="$DIR/../nc-product-intake"

if [ ! -d "$INTAKE_DIR" ]; then
  echo "Error: nc-product-intake directory not found at $INTAKE_DIR"
  exit 1
fi

node "$INTAKE_DIR/src/catalog-cli.js" "$@"
