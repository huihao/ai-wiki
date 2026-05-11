---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Online Learning

## Definition

Machine learning paradigm where data points arrive sequentially in arbitrary order, and the model must maintain low average error across the entire sequence without knowing future data. Contrasts with batch learning where all data is available upfront.

## Setup

**Key Characteristics**:
- Points arrive one-at-a-time
- Arbitrary order (not necessarily random)
- Model updates incrementally
- Goal: Minimize cumulative error (regret)
- No knowledge of future data points

**Comparison**:
| Paradigm | Data Availability | Update Method |
|----------|-------------------|---------------|
| **Batch Learning** | All data upfront | Single training pass |
| **Online Learning** | Sequential arrival | Incremental updates |
| **Streaming Learning** | Continuous stream | Continuous adaptation |

## Regret Minimization

**Definition**: Measure of online algorithm performance against best fixed strategy in hindsight.

**Formula**:
```
Regret = Σ(error_t) - min_h Σ(error_h,t)
```
Where:
- error_t is error at time t with online algorithm
- min_h Σ(error_h,t) is minimum cumulative error achievable by fixed hypothesis h

**Goal**: Regret grows sublinearly (O(√T) or better), meaning average regret approaches zero as T→∞.

## Algorithm Characteristics

**Gradient-based**: Most online learning algorithms resemble gradient descent:
- Update model after each data point
- Use delicate learning rate schedules
- Incorporate regularization adaptively

**Adaptive Learning Rates**:
- AdaGrad: Adjusts learning rate per parameter based on historical gradients
- Root of modern optimizers (Adam, RMSprop)

## Connections to Modern AI

### GAN Training Dynamics
- Two networks (generator, discriminator) play adversarial game
- Regret minimization connects to equilibrium concepts in game theory
- GAN convergence relates to no-regret learning dynamics

### Optimizer Design
- **AdaGrad**: First analyzed for online/adversarial settings
- **Adam**: Evolved from AdaGrad, maintains per-parameter adaptive learning rates
- Adaptive methods handle varying gradient magnitudes across parameters

### Data Order Insensitivity
**Key Insight**: With sensible learning rate schedule, data processing order doesn't significantly impact final model quality.

**Implications**:
- Shuffled vs ordered training data: Similar outcomes with proper learning rates
- Curriculum learning: May help but not essential with good optimizers
- Streaming vs batch: Online methods achieve comparable performance

**Practical Takeaway**: Focus on learning rate tuning rather than elaborate data ordering strategies.

## Algorithm Types

### Online Gradient Descent
- Update: w_t = w_{t-1} - η_t * ∇f(w_{t-1}, x_t)
- Learning rate η_t decreases over time
- Works for convex objectives

### Online Mirror Descent
- Generalizes gradient descent to non-Euclidean geometries
- Useful for specific constraint sets

### Follow-the-Leader (FTL)
- Choose hypothesis minimizing cumulative loss so far
- Simple but can oscillate

### Follow-the-Regularized-Leader (FTRL)
- Add regularization to prevent oscillation
- More stable than pure FTL

## Applications

- **Online Advertising**: Real-time bidding strategies
- **Recommendation Systems**: Update models as users interact
- **Financial Trading**: Adaptive trading strategies
- **Streaming Data**: Sensor networks, IoT, real-time analytics
- **Large-scale Training**: Update models as data arrives without storing all data

## Advantages

- **Memory Efficiency**: Don't need to store entire dataset
- **Adaptability**: Adjust to changing data distributions
- **Scalability**: Handle infinite/continuous data streams
- **Real-time Updates**: Model improves continuously

## Limitations

- **Order Sensitivity**: Performance may depend on data order (mitigated by good learning rates)
- **Single-pass Learning**: Cannot revisit earlier data
- **Limited Optimization**: May not reach optimal solution achievable by batch methods
- **Hyperparameter Tuning**: Learning rate schedule critical

## Mathematical Framework

### Convex Online Learning
- Loss functions convex
- Regret bounds provable
- Strong theoretical foundation

### Non-convex Online Learning
- Neural network training
- No regret guarantees
- Empirical effectiveness

## Key Resources

- **Elad Hazan**: "Introduction to Online Convex Optimization" textbook
- Chapter 1 provides regret minimization introduction
- Excellent mathematical treatment

## Related Concepts

- [[regret-minimization|Regret Minimization]] — Performance measure for online algorithms
- [[adaptive-learning-rates|Adaptive Learning Rates]] — Per-parameter learning rate adjustment
- [[streaming-learning|Streaming Learning]] — Continuous data processing
- [[curriculum-learning|Curriculum Learning]] — Data ordering strategies (contrast with order insensitivity)
- [[gan-training|GAN Training]] — Game-theoretic connections to online learning

## Sources

- [[generative-ai-handbook|Generative AI Handbook]] — Online learning as foundation for understanding modern optimizer design

## Cross-references

- [[adagrad|AdaGrad]] — Online learning optimizer foundation
- [[adam-optimizer|Adam Optimizer]] — Modern adaptive optimizer
- [[gradient-descent|Gradient Descent]] — Batch vs online variants
- [[sequential-prediction|Sequential Prediction]] — General framework