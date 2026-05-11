---
created: 2026-04-28
updated: 2026-05-09
tags: [deployment, devops, software-engineering]
sources: 0
---

# Feature Flags

## Definition

Feature flags (also called feature toggles or feature switches) are a software development technique that enables toggling features on or off at runtime without deploying new code or restarting the application. By wrapping new functionality in conditional logic controlled by a flag, teams can decouple code deployment from feature release. Feature flags serve multiple purposes: progressive rollouts (gradually enabling features for larger user segments), A/B testing (comparing user behavior across feature variants), kill switches (instantly disabling problematic features in production), and environment-specific behavior (enabling debug features only in development). Feature flags are a core practice in modern continuous delivery.

## Key Proponents / Critics

- [[martin-fowler]] — Advocated feature toggles as a key continuous delivery practice
- [[github]] — GitHub's feature flag infrastructure supports progressive rollouts

## Related Concepts

- [[canary-deployment]] — Feature flags complement deployment strategies by separating release from deploy
- [[ci-cd]] — Feature flags enable trunk-based development within CI/CD workflows
- [[experiment-tracking]] — A/B testing with feature flags generates experiments to track
- [[deployment]] — Feature flags decouple deployment from release
- [[safe-to-fail-experiments]] — Feature flags enable safe experimentation in production

## Related Entities

- [[github]] — Uses feature flags extensively for progressive feature delivery

## Sources

(No specific sources linked)

## Evolution

- **2000s**: Feature toggles emerge in large-scale web applications at companies like Flickr and WordPress
- **2010**: Martin Fowler publishes influential writing on feature toggle patterns and taxonomy
- **2012**: LaunchDarkly commercializes feature flag management as a SaaS platform
- **2015**: Feature flags become standard practice in continuous delivery and DevOps toolchains
- **2020s**: Feature flag platforms integrate with experimentation frameworks and progressive delivery tools
- **2024+**: AI-powered feature flag systems suggest rollout strategies based on real-time metrics analysis
