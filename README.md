# nvim-plugin-devkit

A reusable development and review kit for Neovim plugins.

The conventional plugin skeleton is the starting point, not the main contribution. This repository collects the development practices that were established through the implementation and review of [nvim-heredoc](https://github.com/incus-skills/nvim-heredoc): evidence-led review, explicit responsibility and event boundaries, state-maintenance patterns, headless interaction testing, and documentation that distinguishes contracts from implementation details.

> **Status: initial field-derived edition.** These practices have been exercised in nvim-heredoc. Their transfer to other plugin shapes is not yet established. Treat patterns as candidates to test and adapt, not universal rules.

## What this provides

- A conventional Lua plugin layout to adapt.
- A review process that separates observation, policy adjudication, specification, implementation, and verification.
- Architecture notes for plugins that maintain interpreted buffer state or react to multiple editing events.
- Headless Neovim testing guidance, including live Insert-mode input and scheduling boundaries.
- Documentation conventions for separating current contract, current implementation, transitional mechanisms, and potential capabilities.
- AI-assisted workflow skills that preserve evidence, scope, and authorization boundaries.

## What this does not provide

- A shell/heredoc implementation or scanner.
- A mandatory architecture for every Neovim plugin.
- A claim that every plugin needs incremental snapshots, three-valued containment, or five CI jobs.
- A substitute for reading Neovim's current API documentation or testing against the supported Neovim versions.

## Repository map

- `template/`: starter plugin skeleton and example test/CI structure.
- `docs/`: architecture, review, testing, and adoption guidance.
- `skills/`: reusable instructions for AI-assisted development and review.

## Starting a plugin

1. Copy or generate from `template/` and replace every `plugin-name` placeholder.
2. Decide the plugin's actual runtime contract and supported Neovim versions before choosing architecture.
3. Keep unit tests, live buffer integration, external-process tests, formatting, and distribution/coexistence checks separate where their evidence differs.
4. Use the review process when behaviour is uncertain: observe first, adjudicate policy, specify the contract, then implement.
5. Treat the first independent plugin built with this kit as a transfer test. Feed mismatches back into this repository only when they reveal a reusable improvement.

## Origin

The initial patterns were extracted from the review and implementation history of [incus-skills/nvim-heredoc](https://github.com/incus-skills/nvim-heredoc). Project-specific grammar, bugs, fixtures, and implementation decisions remain in that project. This repository carries only the practices that may be reusable elsewhere.
