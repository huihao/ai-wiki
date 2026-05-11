---
created: 2026-04-28
updated: 2026-04-28
tags: [source, history, framework-design]
sources: 0
---

# PyTorch's Design Origins

## Metadata

- **Author**: [[soumith-chintala]]
- **Date**: December 17, 2023
- **URL**: https://soumith.ch/blog/2023-12-17-pytorch-design-origins.md.html
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/PyTorch's design origins.md`

## Summary

Historical account of PyTorch's creation by [[soumith-chintala]], tracing origins from Torch7 (LuaTorch), connections to JAX through HIPS/autograd, and symbiotic relationship with Chainer. Explains co-evolution and philosophy of attributing ideas openly in ML framework design.

## Key Themes

### Torch7 Origins (2010-2017)

**Creators:** Ronan Collobert, Clement Farabet, Koray Kavuckuoglu (~2010)

**[[soumith-chintala]] involvement:** 2012 → maintainer status (April 2014) alongside original authors.

**LuaTorch:** Used via Lua. Deep C backend (CPU/CUDA code for Linear Algebra and Neural Networks) intertwined with Lua.

### Refactoring LuaTorch (Late 2015 - Mid 2016)

**Problem:** C backend deeply intertwined with Lua.

**Solution:** Refactor backends to be language-agnostic, usable independently.

**Team:** [[luca-antiga]], Andreas Köpf, Sergey Zagoruyko, [[soumith-chintala]], [[adam-paszke]], Francisco Massa.

**Motivation:** Online discussions about moving LuaTorch to modern design, but hadn't framed the new design yet.

### Writing New Python-Based Torch (Mid 2016)

**Genesis:** [[adam-paszke]] reached out for internship. [[soumith-chintala]] asked him to build next version of LuaTorch with modern design. [[sam-gross]] joined full-time.

**LuaTorch team at FAIR:** ~3 people (Gregory Chanan, Trevor Killeen, [[soumith-chintala]]).

**Starting point:**

- Forked LuaTorch, LuaTorch-nn codebases
- TH/THC and THNN/THCUNN C backends
- Built compatibility for LuaTorch checkpoints (transpiled `nn` code → Python → `torch.legacy.nn`)

### Strong Inspirations

**1. torch-autograd:** By Alex Wiltschko and Clement Farabet.

**2. Chainer:** By team at [[preferred-networks]]. Zeming Lin obsessively promoted it, joined the effort.

**Additional contributors:** Natalia Gimelshein, Adam Lerer (part-time).

**Code:** Written from scratch for new PyTorch design.

### Connection to JAX: HIPS/autograd Inspiration

**torch-autograd inspiration:** Directly inspired by Matt Johnson, Dougal Maclaurin, David Duvenaud, Ryan Adams' HIPS/autograd library.

**Indirect JAX connection:** HIPS/autograd authors (Matt Johnson, Dougal Maclaurin) went on to create [[jax]], continuing HIPS/autograd design exploration.

**Naming conflict:** Named subpackage `torch.autograd`, later apologized to Matt Johnson about conflict with their `autograd` package. Oblivious to naming norms in autodiff community.

### Chainer Relationship: Co-Evolution

**Common misunderstanding:** PyTorch didn't simply replicate Chainer's design. Co-evolution after PyTorch's release led to convergence.

**PyTorch innovations that influenced Chainer v2:**

- **Self-assignment:** `self.conv = nn.Conv2d(...)` (Chainer v1 required passing modules to constructor or `add_link`)
- **Parameter concept:** Evolved upgrade from Chainer v1
- **Variable versioning:** Detect correctness issues with inplace operations
- **Autodiff engine:** New ideas beyond Chainer's implementation

**Chainer's influence on PyTorch:**

- Chains concept
- Revolutionary design for that time
- PyTorch proud to be inspired from it

**Amicable transition:** When Chainer's community stopped development, [[preferred-networks]] joined PyTorch community.

### Post-Launch Evolution (2017 - Present)

**Not covered in detail (space limitations):**

- Caffe2 ideas integration (Yangqing Jia, Dmytro Dzhulgakov et al.)
- 5 compiler designs before landing on current one (Zach DeVito, Edward Yang, Adam Paszke, James Reed, Jason Ansel, Christian Sarofeen et al.)
- JAX inspirations → functorch (Richard Zou, Horace He, Victor Fomin, Animesh Jain)
- Distributed design evolution
- Sparse package origins (Martin Raison) → evolution (Christian Puhrsch et al.)
- PyTorch domain libraries
- Data loading (Sam Gross, Tongzhou Wang)
- Community design, growth, innovation (Piotr Balecki, Alban Desmaison, [[soumith-chintala]])
- GPU code innovations (NVIDIA + Meta contributors)

**Result:** PyTorch became a monolith.

### Attributing Ideas is Healthy

**PyTorch's philosophy:**

- Proud to be inspired by prior work
- Proud to have inspired subsequent work
- Always attribute inspirations clearly (torch-autograd, Chainer, others)

**Critique:** People don't attribute origins enough. Ego or corporate controls erase history. Should do more.

**JAX friends:** See framework design as scientific endeavor. Openly discuss ideas/evolutions, proudly attribute origins/inspiration.

## Entities Mentioned

- [[soumith-chintala]] — author, PyTorch co-creator
- [[adam-paszke]] — PyTorch co-creator
- [[sam-gross]] — PyTorch contributor
- [[luca-antiga]] — backend refactoring lead
- Ronan Collobert, Clement Farabet, Koray Kavuckuoglu — Torch7 authors
- Alex Wiltschko — torch-autograd
- Matt Johnson, Dougal Maclaurin, Ryan Adams, David Duvenaud — HIPS/autograd / JAX
- [[preferred-networks]] — Chainer creators
- Zeming Lin — Chainer advocate
- FAIR (Meta AI) — research lab

## Concepts Mentioned

- [[pytorch]] — deep learning framework
- [[jax]] — related framework lineage from HIPS/autograd
- Autograd — automatic differentiation
- Torch7 — Lua-based predecessor
- Chainer — influential Japanese framework
- HIPS/autograd — autodiff library inspiring both PyTorch and JAX

## References

1. [Soumith's March'17 reply on PyTorch origins](https://discuss.pytorch.org/t/pytorch-tutorial-for-deep-learning-researchers/1001/3)
2. [Chainer v1 design](https://github.com/chainer/chainer/blob/v1/examples/imagenet/googlenet.py#L11-L33)
3. [PyTorch welcomes Preferred Networks](https://pytorch.org/blog/pytorch-adds-new-tools-and-libraries-welcomes-preferred-networks-to-its-community/)
4. [PyTorch autodiff innovations paper](https://openreview.net/pdf?id=BJJsrmfCZ)
5. [The PyTorch paper (NeurIPS 2019)](https://proceedings.neurips.cc/paper_files/paper/2019/file/bdbca288fee7f92f2bfa9f7012727740-Paper.pdf)
6. [torch-autograd (Alex Wiltschko)](https://github.com/twitter-archive/torch-autograd)
7. [HIPS/Autograd](https://github.com/HIPS/autograd)
8. [THNN refactors](https://github.com/torch/nn/pulls?q=is:pr+is:closed+THNN)
9. [THCUNN refactors](https://github.com/torch/cunn/pulls?q=is:pr+is:closed+THCUNN)
10. [THNN organization chat](https://app.gitter.im/#/room/#apaszke_THNN:gitter.im)

## Questions / Follow-ups

- How has PyTorch's design philosophy evolved since its launch?
- What were the 5 compiler designs before landing on the current one?
