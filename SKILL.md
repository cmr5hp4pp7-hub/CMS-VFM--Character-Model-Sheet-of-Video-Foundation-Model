---
name: cms-vfm
description: This skill should be used when the user wants to "generate consistent video content", "maintain character appearance across shots", "edit character design sheet", "create scene environment specs", "manage video production consistency", "update character wardrobe bible", "track visual coherence rules", "design character proportions", or "build video generation reference documents" using the CMS-VFM (Character Model Sheet of Video Foundation Model) specification system.
version: 1.0.0
---

# CMS-VFM Skill

Use the **Character Model Sheet of Video Foundation Model (CMS-VFM)** system to ensure consistent character appearance, proportions, and visual continuity across long-form narratives, multi-shot sequences, and cross-scene transitions in AI video generation.

## Core Principles

1. **Always reference specification documents** — Read character design sheets, environment sheets, and update records before generating any video content.
2. **Track all state changes** — Record clothing states, scene conditions, and character evolution after each shot.
3. **Use HTML for settings documents** — Embed images, videos, and audio in HTML documents for rich, machine-readable specifications.
4. **Maintain visual coherence** — Enforce consistent proportions, lighting, and style across all shots.

## Phase 1: Assess Current State

Determine what the user needs:

- **Mode A: New Character/Project Setup** — Create design sheets from scratch. Go to Phase 2.
- **Mode B: Generate Video Content** — User has existing specs. Go to Phase 3.
- **Mode C: Update Existing Specs** — Modify character/environment sheets. Go to Phase 4.
- **Mode D: Consistency Check** — Verify visual coherence across existing outputs. Go to Phase 5.

## Phase 2: Create Specification Documents (New Projects)

### Step 2.1: Gather Character Information

Ask the user for:
- **Character Profile**: Name, age, height, body type, race, occupation, personality
- **Appearance**: Facial proportions, skin tone, hairstyle, body type, signature features
- **Wardrobe**: Casual, formal, seasonal variations, color scheme
- **Make-up & Hair**: Base make-up vs special make-up levels
- **Behavior**: Standing, walking, emotional expression poses
- **Evolution Rules**: Age changes, scar accumulation, clothing aging rules

### Step 2.2: Gather Environment Information

Ask the user for:
- **Scene Tone & Mood**: Color palette, lighting setup, weather rules, era background
- **Spatial Blueprint**: Floor plan, key areas, interactive objects
- **Environment Levels**: Foreground, midground, background detail levels
- **Scene Transition Rules**: Time changes, seasonal changes, damage/repair states

### Step 2.3: Generate HTML Document

Generate a self-contained HTML specification document following these rules:

1. Single HTML file with inline CSS/JS — zero dependencies
2. Include `contenteditable` for in-browser editing
3. Use `localStorage` for auto-save
4. Use CSS variables for consistent theming
5. Embed reference images as base64 when possible

Refer to the frontend-slides core module for HTML document creation patterns: **`core/frontend-slides/SKILL.md`**

> **Note**: frontend-slides is an optional core module. Do not force-load it unless the user explicitly requests HTML spec sheet or presentation generation.

## Phase 3: Generate Video Content (With Existing Specs)

### Step 3.1: Load Required Documents

Read these files before generating:
- Character Design Sheet (if exists in `Settings&Asset Files/`)
- Environment Design Sheet (if exists)
- Props & Belongings Sheet (if needed)
- Remind.md — Current state updates and best practices

### Step 3.2: Construct Prompt with Consistency Guards

Use these templates to ensure visual continuity:

```
Character consistency:
- Keep [Character Name] appearance identical to Character Design Sheet at all times
- Current state: [specific clothing, make-up, hairstyle]
- Evolution applied: [scars, aging, damage if any]
- Head-to-body ratio must remain consistent across all shots

Environment consistency:
- Scene: [Scene Name] at [time of day]
- Weather: [current weather]
- Lighting direction: [consistent source direction]
- All object positions must match the current scene state
```

### Step 3.3: State Tracking After Generation

Update the spec documents with:
- Current clothing state
- Current scene state (time, weather, item positions)
- Any character evolution changes
- Timestamp for the new shot/scene

## Phase 4: Update Existing Specifications

### Step 4.1: Identify Changes

Ask the user:
- What changed? Character appearance / Environment / Props / Evolution / Other
- Is this a permanent or temporary change?
- Does this affect continuity with previously generated content?

### Step 4.2: Apply Updates

1. Read the existing HTML document
2. Apply modifications while preserving all unchanged sections
3. Add change log entry with timestamp
4. Re-open the updated file for the user

### Step 4.3: Record Change Log

Each update must include:
```
Date: [YYYY-MM-DD]
Change: [Description]
Reason: [Why the change was made]
Affects shots: [Shot numbers affected]
Backward compatible: [Yes/No - if No, previous shots need regeneration]
```

## Phase 5: Consistency Check

When verifying visual coherence across shots:

1. **Character check**: Compare proportions, facial features, clothing across all shots
2. **Lighting check**: Verify consistent light source direction and color temperature
3. **Scale check**: Confirm character height relative to environment objects
4. **Prop continuity**: Verify item positions and states across shots
5. **Color script**: Check color palette consistency against the established Color Script

## Supporting Files

| File | Purpose | When to Read |
|------|---------|-------------|
| **`README.md`** | Complete system architecture overview | Phase 1 (assessment) |
| **`simple struct.md`** | Simplified structure template | Phase 2 (creation) |
| **`Remind.md`** | Best practices, common mistakes, and state updates | Phase 3 (generation) |
| **`Settings&Asset Files/Example Based on readme.html`** | HTML document example | Phase 2 (creation) |
| **`Claude_Skills_官方标准规范.md`** | Official SKILL.md format specification | Configuration |

### Related Skills
- **`core/frontend-slides/SKILL.md`** — [Optional Core Module] HTML presentation creation for specification documents

## Optional Core Modules

CMS-VFM includes optional core modules that provide specialized rendering capabilities. These modules are located under `core/<module-name>/` and are loaded only when explicitly needed:

| Module | Path | Capabilities | Activation Condition |
|--------|------|-------------|---------------------|
| frontend-slides | `core/frontend-slides/` | HTML document templates, presentation generation, PDF export, PPTX conversion | User requests HTML spec sheets or presentation creation |

> **Important**: CMS-VFM's main SKILL does not depend on any core module unless the user actively invokes the related functionality.
> When the user needs to create or edit HTML spec sheets, load `core/frontend-slides/SKILL.md` alongside this SKILL.

## Common Mistakes to Avoid

| Mistake | How to Avoid |
|---------|-------------|
| Character appearance drift | Always reference the Character Design Sheet before generating |
| Scene state inconsistency | Track every state change with timestamps |
| Scale/proportion errors | Reference the Proportion Consistency section in Visual Coherence Rules |
| Wardrobe skipping | Update clothing state after every change of scene or time skip |
| Lighting discontinuity | Record light source direction for each scene and maintain it |