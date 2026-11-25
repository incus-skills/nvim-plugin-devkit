# Applying, validating, and evolving the skills

This repository is the development home for Neovim plugin skills. It is a workspace to return to as skills are applied, tested, and refined—not a static template to consume once.

The skills in `skills/` are the primary artefact. The scaffold in `template/` is a vehicle for exercising them. A plugin project is an application context and a source of evidence; this repository is where reusable skill guidance and its applicability boundaries are maintained.

## Recursive development loop

1. Select the skills relevant to a plugin task.
2. Apply them in the plugin repository, adapting them to the plugin's actual problem shape.
3. Record what happened in that plugin's own context: the evidence, constraints, local adaptation, and outcome.
4. Compare the observed application with the skill's claims and applicability conditions.
5. If the application exposes a reusable gap or correction, revise the skill and supporting documentation here.
6. Exercise the revised guidance in a later application, and retain the validation history.

In shorthand:

```text
skill → application → evidence and lessons → skill revision → next application → …
```

## First adaptation

Start with the smallest useful subset: conventional module layout, explicit user-visible contract, separate unit and live-interaction tests, and CI jobs only for distinct evidence layers the plugin needs. Adopt state-maintenance machinery only if the plugin maintains derived state that must survive edits and asynchronous callbacks.

Do not force a plugin into the scaffold's assumptions. Adapt or discard parts that do not fit.

## What belongs where

- **Plugin repository:** concrete behaviour, source evidence, local constraints, plugin-specific workarounds, and the record of how a skill was applied.
- **This repository:** reusable guidance, refined procedures, cross-project distinctions, applicability conditions, known limitations, and evidence supporting or challenging those claims.

A local adaptation should not be erased or rewritten as if it were universal. Preserve it in the plugin's context. If it reveals a reusable correction, carry that correction back here with the conditions that make it valid. The plugin is the test context; this repository is where the shared skill is developed.

## Transfer test

For each meaningful application, record whether relevant guidance:

- applied directly;
- required a local adaptation;
- was irrelevant to this problem shape;
- was missing;
- was misleading or overgeneralized; or
- introduced unnecessary complexity.

A mismatch is not automatically a defect in the skill. It may show that the original pattern was conditional on the nvim-heredoc problem shape, or that the new plugin has a different requirement.

## Promotion and revision rule

Promote a project-derived observation into shared guidance only when its originating context and evidence are recorded, its applicability conditions are stated, and its costs and plausible counterexamples are considered. A second independent context strengthens a transfer claim, but a narrowly scoped skill may remain useful with one validated context if that limited scope is explicit.

When revising a skill:

- state what evidence triggered the revision;
- preserve the previous applicability boundary unless evidence justifies changing it;
- distinguish a general correction from a plugin-specific workaround;
- cross-reference supporting docs rather than duplicating them;
- identify what future application would meaningfully test the revision.

Avoid numerical claims about the percentage of reusable content until transfer exercises support them. Validation is contextual, cumulative, and revisable; it is not a one-time certification.
