# nvim-plugin-devkit

The development home for Neovim plugin skills: where practices are authored, exercised against real plugins, and recursively refined.

This repository is a **living skills-development workspace**, not a static template to copy once and leave behind. The skills in `skills/` are the primary artefact. The scaffold in `template/` is a vehicle for applying and testing those skills; the docs describe the practices and boundaries that guide their development.

The development loop is recursive:

```text
skills → applied to a plugin → lessons from application → skills refined
   ↑                                                        ↓
   └──────────── applied to the next plugin ←───────────────┘
```

Every plugin built with, or reviewed using, these skills can provide a validation event. Application tests whether guidance transfers, exposes where it is conditional, incomplete, misleading, or unnecessarily complex, and may produce a refinement committed back here. The loop does not assume that every local adaptation is reusable: the originating plugin's context and evidence remain recorded there, while this repository carries the refined general guidance and its applicability boundaries.

## Origin and evidence

The initial skill set was developed through the review and implementation of [nvim-heredoc](https://github.com/incus-skills/nvim-heredoc). That project is the reference case and initial evidence base, not content to be copied into this repository. Its heredoc grammar, scanner, bugs, fixtures, and implementation decisions remain in the nvim-heredoc repository.

> **Status: initial field-derived edition.** The current practices have been exercised in nvim-heredoc. Their transfer across independent plugin problem shapes remains to be established. Treat patterns as candidates with stated applicability conditions, not universal rules.

## What this repository maintains

- **Skills** in `skills/`: the primary, evolving guidance for AI-assisted Neovim plugin development and review.
- **Development notes** in `docs/`: the evidence, patterns, conventions, adoption rules, and validation criteria that support skill evolution.
- **Scaffold** in `template/`: a conventional plugin starting point used to exercise the skills, not a finished product or prescribed architecture.

The conventional skeleton is only one part of the kit. The substantive contribution is the accumulated practice around evidence-led review, explicit responsibility and event boundaries, state maintenance where needed, headless interaction testing, and documentation that distinguishes contracts from implementation details.

## What this does not prescribe

- A shell/heredoc implementation or scanner.
- A mandatory architecture for every Neovim plugin.
- A claim that every plugin needs incremental snapshots, three-valued containment, or five CI jobs.
- A substitute for reading Neovim's current API documentation or testing against the supported Neovim versions.
- Automatic promotion of every project-specific workaround into a general skill.

## Working with the repository

1. Load `skills/repository-ingress/SKILL.md` first when beginning AI-assisted work in this repository. It establishes the repository's role in the recursive development process.
2. Identify whether the task is skill development, plugin application, or transfer validation.
3. When applying the kit to a plugin, adapt the scaffold and guidance to that plugin's actual contract and problem shape; do not preserve template structure for its own sake.
4. Record the concrete application evidence in the plugin project.
5. When that evidence reveals a reusable correction, missing distinction, or revised applicability boundary, refine the relevant skill and supporting docs here.
6. Keep the origin, evidence, limits, and unresolved questions visible. A skill is not simply "done"; its validation history and tested applicability are part of its state.

## Repository map

- `skills/`: primary evolving skills, including repository ingress.
- `docs/`: supporting development, review, architecture, testing, and validation guidance.
- `template/`: starter plugin skeleton and example test/CI structure.
