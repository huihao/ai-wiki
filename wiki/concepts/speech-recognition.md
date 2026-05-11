---
created: 2026-04-29
updated: 2026-05-09
tags: [audio, machine-learning, speech]
sources: 1
---

# Speech Recognition

## Definition

Speech recognition, also called Automatic Speech Recognition (ASR), is the technology that converts spoken language into text. Modern ASR systems use deep learning, particularly transformer-based architectures, to transcribe audio signals into written text. Key approaches include connectionist temporal classification (CTC) for alignment-free training, encoder-decoder architectures with attention for sequence-to-sequence transcription, and end-to-end models that jointly learn acoustic and language models. ASR is a foundational technology for voice assistants, transcription services, accessibility tools, and multilingual communication.

## Key Proponents / Critics

- Alex Graves — Pioneer of connectionist temporal classification (CTC) and early deep learning ASR
- The field has transitioned from hand-crafted features (MFCCs, GMM-HMM) to end-to-end neural approaches

## Related Concepts

- [[natural-language-processing]] — Speech recognition is the first stage of many NLP pipelines dealing with spoken language
- [[transformers]] — Modern ASR systems like Whisper use transformer architectures
- [[attention-mechanisms]] — Attention is central to encoder-decoder ASR models for alignment
- [[connectionist-temporal-classification]] — CTC is a key loss function for training ASR systems without explicit alignment
- [[deep-learning]] — End-to-end deep learning revolutionized ASR accuracy and ease of deployment
- [[sequence-to-sequence]] — Many modern ASR models use seq2seq architectures

## Related Entities

- [[openai]] — Whisper is OpenAI's open-source ASR model achieving strong multilingual performance
- [[huggingface]] — Hosts pre-trained ASR models and provides tools for ASR deployment

## Sources

- [[speech-and-language-processing]] — Comprehensive textbook covering speech recognition theory and modern methods

## Evolution

- **1980s-2000s**: Statistical approaches dominate, with Hidden Markov Models (HMMs) and Gaussian Mixture Models (GMMs)
- **2012-2014**: Deep neural networks replace GMMs in hybrid DNN-HMM systems, significantly improving accuracy
- **2015-2017**: CTC and attention-based end-to-end models emerge, eliminating the need for HMM alignment
- **2022**: OpenAI releases Whisper, a large-scale multilingual ASR model trained on 680,000 hours of audio
- **2023-2025**: ASR continues improving with larger training datasets, better multilingual support, and integration with LLMs for real-time voice interaction
