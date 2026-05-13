# CMS-VFM (Visual Standardization Management) README

## Overview
CMS‑VFM is an engineering-oriented specification for video generation. By defining characters and scripts upfront, it ensures consistent character appearance, proportions, and developmental continuity across long narratives, multi-shot sequences, and cross-scene transitions—enabling smooth visual coherence throughout the entire story.

Based on frontend-slides by @zarazhangrui (MIT License) (https://github.com/zarazhangrui/frontend-slides)
THANKS!

## Project is under continuous development and still in testing phase! You can reference this project to optimize your workflow.

![CMS-VFM Architecture Diagram](Settings&Asset%20Files/Asset%20Files/images/2026-05-13%2021.44.08.png)

## System Architecture Overview

### 1. Character Design Sheet

#### 1.1 Character Profile
- **Name**: Character name
- **Age**: Character age setting
- **Height**: Character height data
- **Body Type**: Body shape characteristics
- **Race**: Race setting
- **Occupation**: Occupational background
- **Personality**: Personality trait description

#### 1.2 Appearance Specifications
- **Facial Proportions**: Facial feature proportion standards
- **Skin Tone**: Skin tone settings and variation rules
- **Hairstyle**: Hairstyle design specifications
- **Body Type**: Body shape standards
- **Signature Features**: Identifying characteristic definitions

#### 1.3 Wardrobe System
- **Casual Wear**: Daily clothing
- **Formal Wear**: Formal occasion attire
- **Seasonal Variations**: Seasonal clothing changes
- **Color Scheme**: Clothing color palette

#### 1.4 Make-up & Hair Bible
- **Make-up Levels**:
  - Base Make-up: Daily make-up
  - Special Make-up: Special scene make-up

#### 1.5 Motion & Behavior Sheet
- **Character Pose Library**:
  - Standing Pose: Standing posture specifications
  - Walking Pose: Walking posture specifications
  - Emotional Poses: Emotional expression postures

#### 1.6 Character Evolution
- **Age Changes**: Appearance changes across different age stages
- **Scar Accumulation**: Rules for displaying injury marks
- **Clothing Aging**: Rules for clothing aging over time
- **Key Plot Point Visual Changes**: Appearance change specifications at important plot points

### 2. Environment Design Sheet

#### 2.1 Scene Tone & Mood
- **Color**: Scene main color tone and color scheme
- **Lighting**: Lighting setup and light-shadow effects
- **Weather**: Weather change rules
- **Era Background**: Era background setting

#### 2.2 Spatial Blueprint
- **Main Scene Floor Plan**: Scene layout design
- **Key Areas**: Important area identification
- **Interactive Objects**: Interactive object definitions

#### 2.3 Environment Levels
- **Foreground**: Close-up visual density and detail level
- **Midground**: Mid-range visual density and detail level
- **Background**: Distant visual density and detail level

#### 2.4 Scene Transition Rules
- **Time Changes**: Day-night transition rules
- **Seasonal Changes**: Seasonal transition rules
- **Damage/Repair States**: Scene damage and repair rules
- **Multi-shot Lighting Consistency**: Lighting uniformity specifications across different shots

### 3. Props & Belongings Sheet

#### 3.1 Hero Props
- **Key Item Dimensions**: Important prop size specifications
- **Material Representation**: Prop material definitions
- **Wear Logic**: Prop usage wear rules

#### 3.2 Functional Props
- **Usage Method**: Prop operation methods
- **Carrying Method**: Prop carrying and placement methods

#### 3.3 Prop Evolution
- **Damage Rules**: Prop damage representation
- **Upgrade Rules**: Prop upgrade changes
- **Replacement Rules**: Prop replacement mechanisms

### 4. Visual Coherence Rules

#### 4.1 Shot-to-Shot Consistency
- **Unified Character Proportions**: Consistent character size proportions across different shots
- **Consistent Light Direction**: Light source direction remains consistent across different shots
- **Consistent Clothing State**: Clothing state remains consistent across different shots

#### 4.2 Cross-Scene Continuity
- **Character State Continuation**:
  - Scar continuation across different scenes
  - Make-up continuation across different scenes
  - Clothing continuation across different scenes

#### 4.3 Action Continuity
- Action coherence between different shots

#### 4.4 Proportion Consistency
- **Unified Character Head-to-Body Ratio**: Character head-to-body proportion standards
- **Unified Limb Proportions**: Limb length proportion specifications
- **Unified Prop Dimensions**: Prop size consistency across different scenes
- **Staged Proportion Chart**: Proportion change chart during character growth

#### 4.5 Style Coherence
- **Unified Color Language (Color Script)**: Overall project color scheme
- **Unified Lighting Logic (Lighting Bible)**: Lighting representation specifications
- **Unified Material Representation (Material Guide)**: Material rendering standards

### 5. Asset Folder Structure

#### 5.1 Image Assets
- **Character Design Drawings**: Character concept art, three-view drawings, etc.
- **Scene Design Drawings**: Scene concept art, layout drawings, etc.
- **Prop Design Drawings**: Prop design drawings, detail drawings, etc.
- **Reference Images**: Style references, material references, etc.

#### 5.2 Video Assets
- **Animation Tests**: Action test videos
- **Effect Previews**: Special effect preview videos
- **Reference Videos**: Style reference videos

#### 5.3 Audio Assets
- **Character Voice Acting**: Character voice files
- **Environmental Sound Effects**: Scene environmental sound effects
- **Special Effect Sounds**: Special effect sounds
- **Background Music**: Music files



## 6. Example
This project recommends using HTML format documents as the document format for all major settings. It can insert diverse content including text, images, videos, and audio to meet the documentation needs of the video generation field, while supporting real-time modification and dynamic display.
Example website link：https://github.com/cmr5hp4pp7-hub/CMS-VFM--Character-Model-Sheet-of-Video-Foundation-Model/blob/main/Settings%26Asset%20Files/Example%20Based%20on%20readme.html

### 7. HTML Document Skills
Source project link: https://github.com/zarazhangrui/frontend-slides
Based on frontend-slides by @zarazhangrui (MIT License)


## How to Use

### 1. Download
- Clone the project or download the compressed package, can be used in general agents or specialized domain agents
- Establish a complete CMS-VFM system
- Develop detailed design specifications

### 2. Proper Use in Workflow
- Always require reading character settings, HTML skills, and skills.md to ensure character settings don't drift across multiple shots, and keep setting documents updated in real-time
- Add corresponding files to the chat box to implement each module's functionality (such as animation-patterns, STYLE_PRESETS, etc.)
- Constantly update scene settings for each shot and timely update character growth changes; submit only partial settings to the model when necessary
- Write documents using HTML markup language, insert reference images, videos, and audio into HTML to build script documents that the model can understand at once, reducing rework and complex operations. Meanwhile, utilize the model's coding capabilities to help you edit HTML documents
- Use remind.md document to summarize experience and add reminders, allowing the model to use the most effective path and reduce errors



---

