#!/usr/bin/env python3
"""scripts/extract-pptx.py — CMS-VFM unified PPTX extraction entry point.

Delegates to core/frontend-slides/scripts/extract-pptx.py.

Usage:
    python scripts/extract-pptx.py <input.pptx> <output_dir>
"""
import sys
import os
import subprocess

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
CORE_SCRIPT = os.path.join(SCRIPT_DIR, "..", "core", "frontend-slides", "scripts", "extract-pptx.py")

if not os.path.isfile(CORE_SCRIPT):
    print("❌ frontend-slides core module not installed", file=sys.stderr)
    print("   Ensure core/frontend-slides/ directory exists", file=sys.stderr)
    sys.exit(1)

subprocess.run([sys.executable, CORE_SCRIPT] + sys.argv[1:])