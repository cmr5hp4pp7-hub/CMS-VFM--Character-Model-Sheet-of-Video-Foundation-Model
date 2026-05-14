---
name: frontend-slides
description: CMS-VFM core rendering module. Provides HTML document templates, presentation generation, PDF export, and PPTX conversion capabilities. For reference by other SKILLs only; activate only when the user explicitly requests HTML spec sheets or presentations.
core: true
---

# frontend-slides — CMS-VFM Core Rendering Module

**Role**: CMS-VFM's HTML document rendering engine
**Activation conditions**:
- When the user needs to generate/edit HTML Character Design Sheets or Environment Design Sheets
- When the user needs to create/convert HTML presentations
- When the user needs to export PDF or deploy to Vercel

**Do NOT activate**:
- Pure Markdown editing tasks
- Asset management only (image/audio/video file operations)
- Reading existing HTML file content only

## Capabilities

| Capability | Description |
|------------|-------------|
| **HTML Template System** | Viewport fitting, color palette binding, zero-dependency single-file architecture |
| **12 Visual Presets** | Defined in [STYLE_PRESETS.md](STYLE_PRESETS.md) |
| **Presentation Animation** | 11 effect presets, defined in [animation-patterns.md](animation-patterns.md) |
| **Contenteditable Editing** | In-browser text editing with localStorage auto-save |
| **PPTX Conversion** | Extract PowerPoint content via `scripts/extract-pptx.py` |
| **PDF Export** | Playwright-based screenshot export via `scripts/export-pdf.sh` |
| **Vercel Deploy** | One-click deployment via `scripts/deploy.sh` |
| **CSS Variable Theming** | Quick theme switching via `:root` CSS custom properties |

## Core Rules

1. **Zero Dependencies** — Single HTML file, all CSS/JS inline
2. **Viewport Fitting (NON-NEGOTIABLE)** — Every slide must have `height: 100vh; overflow: hidden;`
3. **Must include viewport-base.css** — Full contents must be embedded in every presentation's `<style>` block
4. **Font sizing with clamp()** — All font sizes and spacing must use `clamp(min, preferred, max)`
5. **CSS Variable Consistency** — Use `:root` variables for colors/fonts/spacing

## File Index

| File | Purpose | When to Read |
|------|---------|-------------|
| [STYLE_PRESETS.md](STYLE_PRESETS.md) | 12 visual presets (colors, fonts, signature elements) | Style selection phase |
| [viewport-base.css](viewport-base.css) | Mandatory CSS (include in full for every presentation) | Generation phase |
| [html-template.md](html-template.md) | HTML architecture, JS features, code quality standards | Generation phase |
| [animation-patterns.md](animation-patterns.md) | CSS/JS animation snippets and effect-to-feeling guide | Generation phase |
| [scripts/extract-pptx.py](scripts/extract-pptx.py) | PPT content extraction Python script | PPT conversion phase |
| [scripts/deploy.sh](scripts/deploy.sh) | Deploy to Vercel | Sharing phase |
| [scripts/export-pdf.sh](scripts/export-pdf.sh) | Export to PDF | Export phase |

## Usage

When a parent SKILL (e.g., CMS-VFM main SKILL) needs this module:

1. Load this SKILL.md to get the module's capability declarations
2. Read the supporting files above as needed when generating HTML
3. Execute scripts from `core/frontend-slides/scripts/` for build/export/deploy tasks

> **Note**: This module is an optional core module of CMS-VFM. The CMS-VFM main SKILL should NOT force-load this module unless the user explicitly needs HTML rendering capabilities.