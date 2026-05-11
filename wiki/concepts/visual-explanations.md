---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Visual Explanations

## Definition

Visual explanations are interactive, graphical tools that make complex machine learning processes accessible by decomposing them into step-by-step visual representations, allowing users to see internal model operations (attention patterns, diffusion denoising steps, embedding spaces) rather than treating models as black boxes.

## Key Aspects

- The Diffusion Explainer provides an interactive walkthrough of Stable Diffusion's architecture, visually demonstrating how noise is progressively removed to generate images, making the diffusion process intuitive without requiring mathematical background.
- The Transformer Explainer similarly decomposes GPT-2's operation into visual stages: tokenization, embedding, attention computation (with query/key/value visualizations), MLP processing, and output probability distributions.
- Visual tools make abstract concepts concrete: attention heads become heatmaps showing which tokens attend to which, diffusion steps become image sequences showing noise removal, and embedding spaces become navigable 2D projections.
- The key innovation is interactivity: users can modify inputs and immediately see how changes propagate through the model, building intuition about causal relationships between inputs and outputs.
- Polo Club at Georgia Tech has produced both the Transformer Explainer and the Diffusion Explainer, establishing a pattern for visual ML education tools.
- Visual explanations serve different audiences: researchers use them to debug model behavior, educators use them to teach ML concepts, and practitioners use them to build intuition before diving into mathematical formalism.
- These tools run inference in the browser (using ONNX Runtime Web or similar), allowing exploration without server infrastructure or API access.

## Related Concepts

- [[attention-mechanisms]] -- the operation most frequently visualized in transformer explainers
- [[diffusion-models]] -- the generative process visualized by diffusion explainer tools
- [[embedding-projector-visualization]] -- interactive visualization of high-dimensional data representations

## Sources

- [[diffusion-explainer-stable-diffusion-visualization]]
