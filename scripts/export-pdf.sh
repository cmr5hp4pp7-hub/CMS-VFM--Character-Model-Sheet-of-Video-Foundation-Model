#!/bin/bash
# scripts/export-pdf.sh — CMS-VFM unified PDF export entry point
# Delegates to core/frontend-slides/scripts/export-pdf.sh
# Usage: bash scripts/export-pdf.sh <path-to-html> [output.pdf]
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CORE_SCRIPT="$SCRIPT_DIR/../core/frontend-slides/scripts/export-pdf.sh"

if [[ ! -f "$CORE_SCRIPT" ]]; then
  echo "❌ frontend-slides core module not installed" >&2
  echo "   Ensure core/frontend-slides/ directory exists" >&2
  echo "   Install: place frontend-slides folder inside core/" >&2
  exit 1
fi

exec bash "$CORE_SCRIPT" "$@"