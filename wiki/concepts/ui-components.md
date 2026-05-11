---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# UI Components

## Definition

UI components are reusable, self-contained interface elements (buttons, cards, dialogs, forms, navigation) that follow consistent design systems and can be composed together to build complex user interfaces, with modern approaches like shadcn/ui emphasizing copy-paste ownership over package-based distribution.

## Key Aspects

- shadcn/ui popularized a new distribution model: rather than installing a package, developers copy component source code directly into their project, gaining full ownership and customization control.
- Components are built on Radix UI primitives (unstyled, accessible headless components) and styled with Tailwind CSS, providing a balance of accessibility and design flexibility.
- The component ecosystem covers common patterns: forms, tables, dialogs, drawers, navigation menus, tooltips, popovers, and data display elements.
- shadcn/ui's CLI (`npx shadcn@latest init`) scaffolds the project with the required Tailwind and component configuration, then individual components are added via `npx shadcn@latest add <component>`.
- The approach solves the "eject" problem of traditional component libraries: because the code lives in your project, there is no upstream version to conflict with and no black-box abstraction to fight.
- AI coding tools frequently reference shadcn/ui patterns because the components are well-documented, widely used, and their source is directly inspectable.
- Component composition follows React patterns: small focused components are combined via props, children, and render props to create complex interfaces.

## Related Concepts

- [[radix-ui]] -- the headless component primitives underlying shadcn
- [[tailwind-css]] -- the utility-first CSS framework used for styling
- [[react-components]] -- the broader component model that shadcn extends

## Sources

- [[shadcn]]
