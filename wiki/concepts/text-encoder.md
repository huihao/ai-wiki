# Text Encoder

Component in image generation models that converts text prompts into numerical representations the model can understand and use to guide image generation.

## Evolution

### CLIP (2021)
- Released by OpenAI
- 77 token context limit
- Primitive compared to modern standards
- Designed for image caption matching
- Uncased (no distinction between uppercase/lowercase)
- Limited to couple sentences of context

### T5 (Older)
- Released by Google
- 512 token context limit
- Experimental text encoder
- Still limited for nuanced input

### Modern Multimodal Encoders
- Nano Banana: 32,768 tokens
- Trained on diverse content (Markdown, JSON, HTML)
- Case-sensitive (ALL CAPS has effect)
- Understanding of structure and formatting

## Impact on Generation Quality

### Caption-Level Prompts
Models with CLIP/T5 text encoders struggle beyond simple image captions:
- "A cat sitting on a chair"
- Basic scene descriptions
- Simple attribute lists

### Structured Prompts
Sophisticated text encoders enable:
- Markdown lists with multiple constraints
- JSON field-by-field specifications
- HTML/CSS layout descriptions
- Compositional requirements
- Multi-step instructions

### Semantic Understanding
Text encoders trained on annotated datasets can differentiate:
- "Pulitzer Prize winning" composition vs standard
- Professional photography attributes
- Style-specific characteristics
- Contextual nuances

## Training Considerations

### What Models Learn From
Text encoder training determines what prompt features the model understands:
- Image captions: basic scene descriptions
- Markdown: structured lists, headers, formatting
- JSON: field specifications, structured data
- HTML/CSS: layout systems, positioning rules
- Technical documentation: complex instructions

### Case Sensitivity
- CLIP: uncased (ALL CAPS ignored)
- Modern encoders: case-sensitive (ALL CAPS improves adherence)

## Performance Metrics

### Context Length
Maximum number of tokens the encoder can process, directly limiting prompt complexity.

### Structure Understanding
Ability to parse and use structured formatting (Markdown, JSON) rather than treating all text as flat strings.

### Semantic Granularity
Ability to differentiate nuanced requirements beyond basic descriptors.

## Related

- [[nano-banana|Nano Banana]] — Model with sophisticated text encoder from Gemini 2.5 Flash
- [[prompt-adherence|Prompt Adherence]] — Quality metric directly dependent on text encoder capabilities
- [[clip|CLIP]] — OpenAI's foundational text encoder for image generation
- [[t5|T5]] — Google's earlier text encoder with 512 token context
- [[context-window|Context Window]] — Maximum input length determined by text encoder architecture