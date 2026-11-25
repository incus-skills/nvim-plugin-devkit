---
name: repository-ingress
description: Orient AI sessions working in nvim-plugin-devkit and govern participation in its recursive Neovim plugin skills-development loop.
---

# Repository ingress: Neovim plugin skills development

## Repository orientation

You are working in the Neovim plugin skills development repository.

This repository is the **living development home for Neovim plugin skills**. The skills in `skills/` are the primary artefact. They are authored, applied to real plugin work, evaluated against the evidence of that application, and recursively refined here.

This is not a static template to consume once and leave behind. It is a workspace to return to as the skills evolve.

## What this repository is

- A home for developing and maintaining reusable Neovim plugin development and review skills.
- A place to record and refine cross-project guidance, including its evidence, applicability conditions, limitations, and unresolved questions.
- A supporting environment in which the scaffold in `template/` can be used to exercise the skills.
- A recursive learning loop connecting skill authoring, application, validation, and revision.

## What this repository is not

- **Not a disposable template.** Do not treat copying `template/` as the end of the interaction with this repository.
- **Not itself a Neovim plugin.** The scaffold is a test vehicle and starting point, not a product architecture that every plugin must retain.
- **Not a project-specific implementation archive.** Keep a plugin's grammar, runtime code, bugs, fixtures, and local workarounds in that plugin's repository.
- **Not a static documentation archive.** Skills and supporting docs are actively maintained in response to evidence.

## Recursive development loop

1. A skill is selected and applied in a session working on a plugin.
2. The plugin's actual problem shape tests the skill's guidance and stated applicability conditions.
3. The application produces evidence: direct fit, necessary adaptation, irrelevance, omission, misleading guidance, or unnecessary complexity.
4. The plugin repository retains the concrete evidence and local context.
5. A reusable correction, distinction, procedure, or applicability-boundary change is brought back to this repository.
6. The relevant skill and supporting documentation are revised with provenance and limits intact.
7. A later plugin application provides another opportunity to test the revision.

The loop is recursive, not a one-way export:

```text
skills → plugin application → evidence and lessons → skill refinement
   ↑                                                     ↓
   └──────────── next application and validation ←──────┘
```

A plugin application is a validation event, not proof that every part of the kit transfers. A failed transfer can be valuable evidence about where a skill must be narrowed, split, clarified, or discarded.

## Roles in the loop

### Skill authoring or revision

You are working in the devkit repository. Inspect the relevant skill and its supporting documentation. Establish the evidence and originating plugin context behind a proposed change. Preserve applicability conditions; do not silently broaden a claim because a new formulation sounds more general.

### Skill application

You are working in a plugin repository, with this devkit as a source of guidance. Adapt the skill to the plugin's actual contract and problem shape. Do not modify the devkit merely because a local adaptation was needed. Record the concrete context and result in the plugin project; bring back a shared revision when the evidence supports one.

### Transfer validation

You are evaluating whether a skill's guidance held under a new plugin problem shape. Report what transferred, what needed adaptation, what was irrelevant, and what failed or was absent. The outcome may be a skill revision, a narrower applicability boundary, or evidence that the existing boundary is sound. Do not force a change simply to make every validation produce a commit.

## Working conventions

- **Evidence before generalization.** Distinguish source facts, observed behaviour, interpretation, inference, and proposal.
- **Applicability is part of the skill.** Preserve conditions that say when a pattern applies. Do not remove them to make a skill appear universal.
- **Keep provenance.** Identify the plugin context and evidence that caused a skill to change.
- **Separate local and shared knowledge.** The plugin repository keeps its specific facts and adaptations; this repository carries the reusable guidance and its limits.
- **Do not turn a candidate into a rule prematurely.** One successful application does not establish universal transfer.
- **Cross-reference rather than duplicate.** If a pattern is explained in `docs/architecture-patterns.md`, skills should point to it rather than independently reproducing the whole explanation.
- **Use the documentation distinctions carefully.** Separate current contract, current implementation, transitional mechanisms, and potential capabilities where those distinctions are relevant; do not impose the convention mechanically on every skill.

## Before changing a skill

1. Identify the skill and the exact guidance being challenged or extended.
2. Identify the plugin application, task, and evidence behind the proposed change.
3. Decide whether the finding is local or reusable.
4. State the revised applicability conditions and any known counterexamples or costs.
5. Update the skill and supporting docs without duplicating their content.
6. Record what future application would test the revision.

If no concrete application evidence exists, treat the change as a proposal or hypothesis—not as a validated correction.

## Reference case

The initial skill set was developed through work on [nvim-heredoc](https://github.com/incus-skills/nvim-heredoc). That repository is the initial evidence base, not a source of implementation content to copy into this devkit. Its heredoc-specific grammar, scanner, bugs, fixtures, and design decisions remain there.

## Task boundary

This ingress establishes repository purpose and working orientation. It does not authorize any particular implementation, issue change, merge, release, or alteration to a plugin repository. Follow the user's task-specific scope and authorization.
