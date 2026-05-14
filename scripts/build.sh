#!/bin/bash
# scripts/build.sh — CMS-VFM unified build entry point
# Delegates to the corresponding implementation under core/frontend-slides/scripts/
set -euo pipefail

CORE_DIR="$(cd "$(dirname "$0")/../core" && pwd)"
MODULE_DIR="$CORE_DIR/frontend-slides"

if [[ ! -d "$MODULE_DIR" ]]; then
  echo "❌ frontend-slides core module is not installed" >&2
  echo "   Please ensure the core/frontend-slides/ directory exists" >&2
  exit 1
fi

echo "✅ frontend-slides core module loaded"
echo "   Available build scripts:"
echo "   - bash scripts/deploy.sh <path>       Deploy to Vercel"
echo "   - bash scripts/export-pdf.sh <html> [output]   Export to PDF"
echo "   - python scripts/extract-pptx.py <pptx> <dir>   Extract PPTX"