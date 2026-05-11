#!/bin/bash

# Extract processed raw filenames from log.md and delete matching files in raw/ai/

processed_files=(
    "Welcome to aiquizzes (archived).md"
    "Resources _ MongoDB.md"
    "Official Leaderboards.md"
    "Learn_Machine_Learning_in_3_Months_README.md"
    "Journal of Machine Learning Research.md"
    "Archive.md"
    "April King.md"
    "Alekh Agarwal.md"
    "Understanding Reasoning LLMs.md"
    "Anthropic Console.md"
    "GitHub - wgwang_awesome-LLMs-In-China_ 中国大模型.md"
    "How Formula 1® uses generative AI to accelerate race-day issue resolution _ Amazon Web Services.md"
    "Revolutionizing software testing_ Introducing LLM-powered bug catchers.md"
    "Build a Secure RAG Agent Using LlamaIndex and Auth0 FGA on Node.js _ Auth0.md"
    "Streamlit • A faster way to build and share data apps.md"
    "AI in Software Testing_ QA & Artificial Intelligence Guide.md"
    "Stable Diffusion Project_ Creating Illustration - MachineLearningMastery.com.md"
    "Answer.AI - Practical AI R&D – Answer.AI.md"
    "GitHub - openinterpreter_open-interpreter_ A natural language interface for computers.md"
    "Practical Deep Learning for Coders - Practical Deep Learning.md"
    "How to Run a Paper Club (also_ LIVE at NeurIPS 2024!).md"
    "The Roadmap for Mastering Machine Learning in 2025 - MachineLearningMastery.com.md"
    "How AI code generation works.md"
    "Building A Generative AI Platform.md"
    "DSPy.md"
    "n8n vs. Dify vs. Coze_ A Comprehensive Comparison...md"
    "The 8-Factor Agent.md"
    "The Illustrated Transformer.md"
    "The 2025 AI Engineering Reading List.md"
    "How to Scale Your Model.md"
    "GitHub - rwitten_HighPerfLLMs2024.md"
    "Mojo Manual _ Modular.md"
    "Welcome to LlamaIndex.TS.md"
    "Gemini.md"
    "Customize AI in Visual Studio Code.md"
    "GitHub - huggingface_pytorch-image-models_ The largest collection of PyTorch image encoders _ backbo.md"
    "nbdev – Create delightful software with Jupyter Notebooks.md"
    "Mathematics for Machine Learning.md"
    "explained.ai.md"
    "ImageNet.md"
    "5 Python Libraries to Build an Optimized RAG System - MachineLearningMastery.com.md"
)

# Also handle batch processed files (April 28 batch)
batch_files=(
    "What is ChatGpt doing and why does it work_.md" "Wolfram Language.md"
    "Understanding coding self-attention raschka.md" "Understanding Reasoning LLMs.md"
    "Understanding coding kv-cache raschka.md" "Understanding Deep Learning.md"
    "Untitled prompt _ Google AI Studio.md"
    "Transformers Word Embeddings Deepanshu.md" "Transformer_ A Novel Neural Network Architecture for Language Understanding.md"
    "The Ultra-Scale Playbook.md" "The State of LLM Reasoning Model Inference.md"
    "What to do to scale up_.md" "What is the Agent2Agent (A2A) Protocol_.md"
    "What is reasoning model ibm.md" "What is Amazon SageMaker AI_.md"
    "Vector Embeddings Mallya.md" "Vast.ai _ Console.md"
    "UC Irvine ML Repository.md" "Train foundation model Ruiz.md"
    "Transformers Word Embeddings Deepanshu.md"
    "WaytoAGI-通往AGI之路，最好的 AI 知识库和工具站.md"
    "Unsloth Docs.md" "Understanding coding self-attention raschka.md"
    "Tuning Local LLMs With RAG Using Ollama and Langchain.md"
    "The Parts of a Transformer Nobody Talks About.md"
    "The Evolution of Modern RAG Architectures.md"
    "llms-know-linguistics-blevins.md"
    "state-of-llm-reasoning-raschka.md"
    "comprehensive-rag-ollama-langchain.md"
)

deleted_count=0

# Delete files from the processed list
for filename in "${processed_files[@]}" "${batch_files[@]}"; do
    filepath="raw/ai/$filename"
    if [ -f "$filepath" ]; then
        rm "$filepath"
        echo "Deleted: $filename"
        deleted_count=$((deleted_count + 1))
    else
        echo "Not found: $filename"
    fi
done

echo ""
echo "Total deleted: $deleted_count files"
echo "Remaining files in raw/ai:"
find raw/ai -name "*.md" -type f | wc -l