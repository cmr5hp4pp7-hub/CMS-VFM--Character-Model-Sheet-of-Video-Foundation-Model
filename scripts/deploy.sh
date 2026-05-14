#!/bin/bash
# scripts/deploy.sh — CMS-VFM unified deployment entry point
# Delegates to core/frontend-slides/scripts/deploy.sh
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CORE_SCRIPT="$SCRIPT_DIR/../core/frontend-slides/scripts/deploy.sh"

if [[ ! -f "$CORE_SCRIPT" ]]; then
  echo "❌ frontend-slides core module is not installed" >&2
  echo "   Please ensure the core/frontend-slides/ directory exists" >&2
  exit 1
fi

exec bash "$CORE_SCRIPT" "$@"