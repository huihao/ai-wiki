---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Autoregressive Models

## Definition

Statistical models for sequential prediction where each output depends on previous outputs in the sequence. Fundamental mental model for understanding language model generation despite complexity difference from simple ARIMA models.

## Mechanism

- **Step 1**: Predict next value based on previous sequence values
- **Step 2**: Append predicted value to sequence
- **Step 3**: Repeat prediction using extended sequence
- **Step 4**: Continue until sequence complete

**Mathematical Formulation**:
```
y(t) = c + Σ φ(i) * y(t-i) + ε(t)
```
Where:
- y(t) is current value
- φ(i) are autoregressive coefficients
- ε(t) is noise/error term

## Applications

### Time-Series Forecasting
- Stock price prediction
- Weather forecasting
- Economic indicators
- Sensor data prediction

### Language Modeling
- Token-by-token generation in LLMs
- Billion-parameter models as complex autoregressive processes
- Next-token prediction trained on vast corpora

## Relevance to LLMs

**Simple Model as Mental Framework**:
- ARIMA models provide intuition for generation mechanics
- Despite architectural complexity (attention, transformers), basic principle remains: predict next from previous
- Helps conceptualize billion-parameter model behavior

**Key Difference**: LLMs use complex attention mechanisms and learned representations, while simple AR models use linear combinations of previous values.

## Types

### AR(p) - Autoregressive of order p
- Uses p previous values
- Linear combination of past observations
- Common in classical time-series

### ARIMA - Autoregressive Integrated Moving Average
- Combines autoregression with differencing and moving average
- Handles non-stationary time-series
- Industry standard for forecasting

### Neural Autoregressive Models
- Neural networks predict next value
- Can model complex nonlinear dependencies
- Foundation for language models (GPT, etc.)

## Model Components

**Order Selection**: Number of previous values to consider (p in AR(p))
- Higher order: More context, more parameters
- Lower order: Less computation, may miss patterns

**Coefficient Learning**: Weights for previous values
- Linear models: Solve analytically
- Neural models: Learn through training

**Stationarity**: Time-series statistical properties constant over time
- AR models require stationarity
- Non-stationary data needs differencing (ARIMA)

## Limitations

### Simple AR Models
- Linear dependencies only
- Limited context window (fixed order)
- Requires stationarity
- Cannot handle complex patterns

### Neural AR Models
- Computationally expensive
- Training requires large data
- Interpretability challenges
- Overfitting risk

## Comparison with Transformers

| Aspect | Simple AR Model | Transformer LLM |
|--------|-----------------|-----------------|
| **Context** | Fixed window (p values) | Variable, attention-based |
| **Dependencies** | Linear combination | Complex attention patterns |
| **Learning** | Coefficient estimation | Deep representation learning |
| **Nonlinearity** | None (linear) | Multiple nonlinear layers |
| **Parameters** | Few (p coefficients) | Billions |

**Shared Principle**: Predict next from previous sequence elements.

## Foundations

### Statistical Prerequisites
- Time-series stationarity
- Correlation structures
- Lag relationships

### Neural Extensions
- Recurrent Neural Networks (RNNs)
- Long Short-Term Memory (LSTM)
- Transformers (modern LLMs)

## Evaluation

### Time-Series Metrics
- Mean Absolute Error (MAE)
- Root Mean Square Error (RMSE)
- Mean Absolute Percentage Error (MAPE)
- Forecast accuracy on held-out data

### Language Model Metrics
- Perplexity
- Next-token prediction accuracy
- BLEU score (for translation)
- Human evaluation

## Related Concepts

- [[time-series-analysis|Time-Series Analysis]] — Sequential data modeling framework
- [[sequential-prediction|Sequential Prediction]] — General prediction from sequences
- [[stochastic-processes|Stochastic Processes]] — Random sequences theoretical foundation
- [[markov-chain|Markov Chain]] — Memoryless sequential processes
- [[language-model-generation|Language Model Generation]] — Token-by-token prediction

## Sources

- [[generative-ai-handbook|Generative AI Handbook]] — Learning roadmap positioning autoregressive models as LLM mental framework

## Cross-references

- [[transformers|Transformer Architecture]] — Modern autoregressive language models
- [[attention-mechanisms|Attention Mechanism]] — Complex context handling vs simple AR
- [[lstm|LSTM]] — Neural autoregressive predecessor to Transformers
- [[next-token-prediction|Next-token Prediction]] — Language model training objective