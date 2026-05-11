# Prompt Adherence

Model's ability to accurately follow and execute all specified instructions, constraints, and requirements in a prompt.

## Importance

### Beyond Visual Quality
Visual quality alone doesn't determine usefulness. Strong prompt adherence enables:
- Specific composition requirements
- Multiple simultaneous constraints
- Precise attribute specifications
- Complex multi-step instructions

### Creative Control
Strong adherence allows users to achieve specific visions rather than accepting generic "good-looking" outputs.

## Factors Affecting Adherence

### Context Window Size
- **CLIP**: 77 tokens—limited to basic image captions
- **T5**: 512 tokens—moderate detail possible
- **Nano Banana**: 32,768 tokens—extremely detailed specifications possible

### Text Encoder Quality
Sophisticated text encoders trained on diverse content types:
- Markdown (structured lists, headers)
- JSON (field specifications, structured data)
- HTML/CSS (layout systems, styling)
- Technical documentation

Enable better understanding of structured, complex prompts.

### Training Data Diversity
Models trained on annotated image datasets with semantic labels (e.g., "Pulitzer Prize winning" vs standard photos) can differentiate compositional requirements beyond simple visual features.

## Measurement Approaches

### Attribute Checklist
Verify each specified attribute appears in output:
- Exact color specifications (including hex codes)
- Clothing/accessory details
- Positioning requirements
- Multiple subject characteristics

### Composition Requirements
Check adherence to compositional rules:
- Rule of thirds positioning
- Lighting specifications
- Camera angle/perspective
- Background treatment

### Multi-Constraint Tests
Provide multiple simultaneous constraints and verify all executed:
- Edit commands (five simultaneous edits)
- Character descriptions (three kittens with specific attributes)
- Style + content combinations

## Techniques to Improve Adherence

### ALL CAPS Emphasis
Using ALL CAPS for "MUST," "NEVER," etc. improves adherence. Some models explicitly include penalty systems in system prompts.

### Threat-Based Instructions
Phrases like "YOU WILL BE PENALIZED" actually improve adherence in models with built-in enforcement systems.

### Structured Formatting
- Markdown lists for multiple constraints
- JSON for structured attribute specifications
- Headers/sections for organizing requirements

### Sequential Logic
Presenting requirements in logical sequence helps models process complex multi-part instructions.

## Examples

### Nano Banana
Demonstrated exceptional adherence with:
- Three kittens with exact fur colors, clothing, heterochromia, positioning
- Five simultaneous edit commands
- 2600+ token JSON character descriptions
- HTML/CSS webpage rendering

### ChatGPT gpt-image-1
Less precise adherence:
- Only middle cat had heterochromia with wrong colors
- Poor compositional requirements
- Yellow hue "style" interferes with specific color requests

## Related

- [[nano-banana|Nano Banana]] — Model with exceptional prompt adherence via large context window
- [[autoregressive-image-generation|Autoregressive Image Generation]] — Generation approach favoring prompt adherence
- [[text-encoder|Text Encoder]] — Component determining prompt understanding quality
- [[context-window|Context Window]] — Maximum input length affecting prompt complexity