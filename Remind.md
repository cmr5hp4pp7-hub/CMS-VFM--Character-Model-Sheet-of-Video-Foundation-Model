# CMS-VFM Usage Reminders

> Best practices, common issues, and experience summaries for using the CMS-VFM system

---

## I. Core Workflow Principles

### 1.1 Always Reference Specification Documents
Before generating any video, you must first read:
- Character Design Sheet
- Environment Design Sheet
- All update records for the current scene

### 1.2 Update Mechanism
After generating each new shot/scene, you must update:
- [ ] Character state (clothing, makeup, injuries)
- [ ] Scene state (time, weather, item positions)
- [ ] Timeline records (to avoid logical conflicts)

### 1.3 Partial Submission Strategy
When specification documents are too long, you may submit only the relevant sections, but you must note:
- The current shot's time point
- The character's current state
- The scene's current state

---

## II. Common Errors and How to Avoid Them

### ❌ Error 1: Character Appearance Drift
**Problem**: Inconsistent character appearance across shots (hair color, height, clothing)

**Mitigation**:
- Reference the exact description from the Character Design Sheet before each generation
- Use the fixed phrase: "Keep the character's appearance completely consistent with the Character Design Sheet"

### ❌ Error 2: Scene State Inconsistency
**Problem**: Item positions and lighting direction are not coherent across scenes

**Mitigation**:
- Record a scene state snapshot for each shot
- Use scene transition rule documents to ensure coherence

### ❌ Error 3: Scale Mismatch
**Problem**: Character height and object size vary across different shots

**Mitigation**:
- Reference the proportion consistency chart
- Specify a unified reference scale

### ❌ Error 4: Wardrobe State Jump
**Problem**: Character clothing changes abruptly between consecutive shots

**Mitigation**:
- Record the wardrobe state timeline
- Mark keyframes where clothing changes occur

---

## III. Prompt Writing Techniques

### 3.1 Character Description Template
```
[Character Name] Keep consistent with the Character Design Sheet:
- Face: [Specific description]
- Hairstyle: [Specific description]
- Clothing: [Specific description]
- Distinctive features: [Specific description]
```

### 3.2 Scene Description Template
```
Scene: [Scene Name]
- Time: [Day/Night/Specific time]
- Weather: [Specific description]
- Lighting: [Light source direction, color temperature]
- Item positions: [Specific description]
```

### 3.3 Consistency Emphasis Phrases
- "Keep completely consistent with the previous shot"
- "Update appearance according to character evolution rules"
- "Follow the visual consistency rules"

---

## IV. Document Maintenance Recommendations

### 4.1 Naming Conventions
- Character documentation: `character_[CharacterName].md`
- Scene documentation: `scene_[SceneName].md`
- Shot records: `shot_[SequenceNumber]_[Timestamp].md`

### 4.2 Version Control
For each major update:
1. Record the update content
2. Mark the time point
3. Explain the reason for the change

### 4.3 Asset Organization
```
Asset Files/
├── characters/      # Character design sheets
│   ├── [CharacterName]/
│   │   ├── profile.png
│   │   ├── front_view.png
│   │   ├── side_view.png
│   │   └── expression_sheet.png
├── scenes/         # Scene concept art
├── props/          # Prop design sheets
└── references/     # Reference images
```

---

## V. HTML Document Usage Tips

### 5.1 Why Use HTML
- Supports embedding images, videos, and audio
- Can be edited and updated in real-time
- Models can understand the full context at once

### 5.2 Recommended HTML Document Structure
```html
<!DOCTYPE html>
<html>
<head>
    <title>Character Design Sheet - [Character Name]</title>
    <style>/* Inline styles for easy sharing */</style>
</head>
<body>
    <section id="profile"><!-- Character profile --></section>
    <section id="appearance"><!-- Appearance description --></section>
    <section id="wardrobe"><!-- Wardrobe system --></section>
    <section id="behavior"><!-- Behavior guidelines --></section>
    <section id="evolution"><!-- Character evolution --></section>
</body>
</html>
```

### 5.3 Interactive Features
- Use the `contenteditable` attribute for inline editing
- Use `localStorage` for auto-saving
- Use CSS variables to unify theme colors

---

## VI. Quality Checklist

Check before each video generation:

- [ ] Character appearance matches the design sheet
- [ ] Scene settings match the current state
- [ ] Clothing/makeup state is correct
- [ ] Lighting direction is consistent
- [ ] Scale complies with specifications
- [ ] Prop state is correct
- [ ] Timeline logic is correct

---

## VII. Lessons Learned

### 7.1 Success Tips
1. **The more detailed the reference = the less rework later**: Time invested in specification documents will save significant rework time down the line

2. **Visual examples outperform text descriptions**: Use images as references whenever possible, rather than relying solely on text descriptions

3. **Small iterative steps are better than big leaps**: Frequent small updates are easier to track than occasional large overhauls

4. **Build a personal character library**: Frequently used character designs can form templates for quick reuse

### 7.2 Continuous Improvement
- Record the reason for every failure
- Update this reminder document
- Optimize prompt templates

---

## VIII. Related Resources

- [README.md](../README.md) - Full project documentation
- [frontend-slides SKILL.md](../frontend-slides-main%28HTML%20Document%20Skills%29/plugins/skills/frontend-slides/SKILL.md) - HTML document creation guide
- [Example](Settings&Asset%20Files/Example%20Based%20on%20readme.html) - Sample HTML document

---

*Last updated: 2026-05-15*