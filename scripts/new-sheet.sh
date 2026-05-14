#!/bin/bash
# scripts/new-sheet.sh — Create a new CMS-VFM spec sheet from template
#
# Usage:
#   bash scripts/new-sheet.sh character <Name>
#   bash scripts/new-sheet.sh environment <Name>
#
# Examples:
#   bash scripts/new-sheet.sh character "Alice"
#   bash scripts/new-sheet.sh environment "Cyberpunk City"
set -euo pipefail

TEMPLATE_DIR="$(cd "$(dirname "$0")/../Settings&Asset Files" && pwd)"
OUTPUT_DIR="$(cd "$(dirname "$0")/../Settings&Asset Files" && pwd)"

TYPE="${1:-}"
NAME="${2:-}"

usage() {
  echo "Usage: bash scripts/new-sheet.sh <character|environment> <Name>" >&2
  echo "" >&2
  echo "Examples:" >&2
  echo "  bash scripts/new-sheet.sh character \"Alice\"" >&2
  echo "  bash scripts/new-sheet.sh environment \"Cyberpunk City\"" >&2
  exit 1
}

if [[ -z "$TYPE" || -z "$NAME" ]]; then
  usage
fi

case "$TYPE" in
  character|char)
    TEMPLATE="$TEMPLATE_DIR/Character Design Sheet Template.html"
    OUTPUT="$OUTPUT_DIR/${NAME}_Character_Sheet.html"
    ;;
  environment|env|scene)
    TEMPLATE="$TEMPLATE_DIR/Environment Design Sheet Template.html"
    OUTPUT="$OUTPUT_DIR/${NAME}_Environment_Sheet.html"
    ;;
  *)
    echo "Error: type must be 'character' or 'environment'" >&2
    usage
    ;;
esac

if [[ ! -f "$TEMPLATE" ]]; then
  echo "❌ Template not found: $TEMPLATE" >&2
  echo "   Ensure Settings&Asset Files/ contains the template files" >&2
  exit 1
fi

if [[ -f "$OUTPUT" ]]; then
  echo "⚠ File already exists: $OUTPUT" >&2
  echo "  Overwrite? (y/N): " >&2
  read -r CONFIRM
  if [[ "$CONFIRM" != "y" && "$CONFIRM" != "Y" ]]; then
    echo "Cancelled." >&2
    exit 0
  fi
fi

cp "$TEMPLATE" "$OUTPUT"
echo "✅ Created: $OUTPUT"
echo "   Open it in your browser to start editing."