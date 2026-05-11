---
concept: "Flow Matching"
domain: "generative-modeling"
importance: "high"
---

# Flow Matching

## Definition

A generative modeling framework using linear interpolation between data and noise, guided by learned vector fields (flows/velocities).

## Mathematical Framework

Forward process (interpolation):
```
z_t = (1-t)x + tε
```

Vector field:
```
u = ε - x
```

Generative process (reverse):
```
z_s = z_t + û · (s - t)
```

## Equivalence with Diffusion

**Flow matching and Gaussian diffusion are mathematically equivalent**:
- Same forward process with appropriate schedule
- DDIM sampler ≡ Flow matching Euler sampler
- Techniques can be mixed/matched across frameworks

## Advantages

- Simple formulation
- Straight paths for single-point predictions
- New network output (û) balancing x̂ and ε̂
- Matches common diffusion weightings

## Misconceptions

"Straight paths" claim is misleading:
- Only straight for single-point predictions
- For distributions, other schedules can be straighter
- Depends on data distribution variance

## Related Concepts

- [[diffusion-models]]
- [[generative-modeling]]
- [[ddim-sampler]]
- [[sampling-strategies]]

## Key Sources

- [[diffusion-meets-flow-matching]]