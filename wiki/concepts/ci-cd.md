---
created: 2026-04-29
updated: 2026-04-29
tags: [automation, deployment, devops]
---

# CI/CD

Continuous Integration and Continuous Deployment — automated pipelines that build, test, and deploy code changes reliably and frequently.

## Definition

CI/CD combines two practices: **Continuous Integration** (automatically building and testing every code commit) and **Continuous Deployment** (automatically releasing passing builds to production). Together they enable fast, reliable software delivery with minimal manual intervention.

## Continuous Integration (CI)

- Developers merge code changes to a shared branch multiple times per day
- Each merge triggers automated build + test suite
- Failures are detected and fixed immediately
- **Key tools**: GitHub Actions, GitLab CI, Jenkins, CircleCI

## Continuous Deployment / Delivery (CD)

- **Continuous Delivery**: Changes passing CI are automatically staged for manual release approval
- **Continuous Deployment**: Changes passing CI are released to production automatically (no manual gate)
- **Key tools**: ArgoCD, Flux, Spinnaker, GitHub Actions

## Pipeline Structure

```
Code Push → Lint/Format → Unit Tests → Build → Integration Tests → Deploy (Staging) → Smoke Tests → Deploy (Prod)
```

## Key Benefits

- **Faster feedback**: Know within minutes if a change breaks anything
- **Lower risk**: Small, incremental releases are easier to debug and roll back
- **Consistency**: Automated pipelines eliminate "works on my machine" problems
- **Developer productivity**: Less time on manual testing and deployment chores

## Best Practices

- Keep CI pipelines fast (< 10 minutes ideal)
- Test in parallel where possible
- Use environment-specific deployments (staging → production)
- Implement automatic rollback on failure monitoring alerts
- Cache dependencies between runs

## Related Concepts

- [[workflow-automation|Workflow Automation]]
- [[test-driven-development|Test-Driven Development]]
- [[deployment|Deployment]]

## Sources

- [[workflow-automation]]
