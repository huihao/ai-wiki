# Gemini 2.5 Flash

Google's large language model designed for fast performance while maintaining strong capabilities in reasoning, multimodality, and function calling.

## Key Features

### Agentic Coding Support
- Trained extensively on Markdown (READMEs, AGENTS.md)
- Strong JSON understanding (structured output, function calling)
- MCP routing capabilities

### Multimodal Capabilities
- Text, images, video, audio processing
- Conversational image segmentation
- Object understanding within images

### Fast Performance
Optimized for speed while maintaining capability, suitable for production deployments.

## Extensions

### Gemini 2.5 Flash Image (Nano Banana)
Image generation extension using same multimodal encoder:
- Autoregressive architecture
- 32,768 token context window
- Strong prompt adherence
- Benefits from Markdown/JSON training

### Segmentation Capabilities
Explicit training on object understanding enables:
- Conversational image segmentation
- Mask generation from natural language descriptions
- Nuanced object differentiation

## Related

- [[nano-banana|Nano Banana]] — Image generation model built on Gemini 2.5 Flash architecture
- [[text-encoder|Text Encoder]] — Component providing Gemini 2.5 Flash's strong prompt understanding