---
name: implementation-tdd
description: Guide test-driven implementation of an authorised Neovim plugin change, from a meaningful failing test through focused implementation, refactoring, and broader verification.
---

# Skill: Test-driven implementation

## Purpose

Use this skill to govern **how to implement** a change after the review process has established the intended behaviour, acceptance criteria, implementation boundary, and authorization.

The review process governs **what** is to be built and **when** implementation may begin. This skill governs **how, step by step, to develop it within that authorised implementation phase**.

It does not decide product policy, expand the accepted contract, authorize additional work, or determine project completion.

## Entry conditions

Before starting:

- Confirm that implementation is authorized.
- Read the accepted contract and acceptance criteria; do not substitute assumptions about intended behaviour.
- Identify the implementation responsibility and relevant test environment.
- Note any unresolved contract question. If it affects what the test should assert, return it for adjudication rather than silently choosing a policy.

If the implementation reveals that the accepted contract is incomplete or contradictory, stop at that boundary and surface the issue. A test can expose a contract gap; it cannot grant authority to resolve one.

## Implementation cycle

Apply the following five components to each behaviour or coherent unit of behaviour in the authorised change. The cycle is iterative; it does not require one feature, file, or function per cycle.

### 1. Sequencing: establish the failing test first

Before writing or changing the implementation that is intended to satisfy a behaviour, write or adapt a test for that behaviour.

Run it and establish that it fails for the intended reason. A test that fails because of a broken harness, missing setup, unrelated regression, or incorrect input delivery is not yet useful evidence about the implementation.

Where practical, preserve the failing assertion or diagnostic output so the reason for the red state is clear.

### 2. Assertion quality: encode the contract and its boundaries

A test-first sequence is not sufficient by itself. The test must express the intended contract.

- Assert observable outcomes, not merely that a function ran or a code path was reached.
- Cover the relevant positive, negative, boundary, and uncertainty cases from the accepted contract.
- Preserve distinctions the contract makes; do not collapse distinct states into a convenient boolean or a single broad assertion.
- Check that the test would fail if the specific incorrect behaviour returned.
- Keep setup and assertions aligned with the layer being tested. Use direct state setup for suitable unit tests; exercise Neovim's real input and event pipeline when that pipeline is part of the behaviour.

Do not invent missing expected behaviour to make a test pass. If the contract does not determine the expected result, raise the gap for review.

### 3. Implementation scope: make one coherent change

Implement the smallest suitable change that satisfies the tested contract while preserving existing behaviour and relevant invariants.

A logical behaviour may require coordinated edits across multiple functions, modules, or files. Keep those changes together when they form one coherent implementation unit; do not impose an artificial one-feature-at-a-time or one-file-at-a-time rule.

Keep unrelated cleanup, speculative generalisation, and adjacent improvements out of the change unless separately authorised. If implementation requires a broader contract or scope, return for review rather than expanding it implicitly.

### 4. Green-state discipline: refactor under passing tests

Once the targeted test passes, improve the implementation where useful while keeping the relevant tests green.

Refactoring may improve structure, naming, duplication, or clarity, but must not quietly change the accepted behaviour. After each meaningful refactoring step, rerun the relevant tests. If they fail, diagnose and correct the regression before continuing.

Do not refactor merely to impose a preferred architecture. The appropriate structure depends on the plugin's actual problem shape.

### 5. Verification: test beyond the local cycle

After the targeted cycle is complete:

- Run the broader relevant test suite, not only the newly added test.
- Run applicable static checks, formatting, linting, type or annotation checks, and compatibility checks configured for the project.
- Exercise integration or live Neovim paths when the contract depends on mappings, input delivery, autocmd ordering, scheduling, buffer lifecycle, or other runtime behaviour.
- Inspect the final diff for unintended changes and confirm each acceptance criterion has corresponding evidence.
- Record the commands, environment, results, and any checks not run.

Choose verification appropriate to the change and the repository. Do not claim that an unrun check passed or that a green suite proves behaviour outside its assertions and environment.

## Completion and hand-back

Report:

- The behaviour implemented and the tests added or changed.
- Why the initial failing test failed, and how the implementation made it pass.
- Any coordinated implementation scope that was necessary.
- Refactoring performed.
- Broader tests and static checks run, with environment and results.
- Acceptance criteria not verified, remaining uncertainty, and deliberately untouched areas.

Implementation completion is not automatically project completion. Return the evidence to the review process or task owner for adjudication against the accepted criteria and project workflow.

## Evidence and limits

This skill's initial evidence comes from implementation work in [nvim-heredoc](https://github.com/incus-skills/nvim-heredoc). In particular, its tri-valued containment correction illustrates why assertion quality matters: the contract needed to distinguish `inside`, `outside`, and `uncertain`. A well-designed test-first cycle could have exposed the contract gap; merely writing a test first would not necessarily have done so.

This is an illustrative lesson, not a claim that every plugin needs tri-valued state or the same test structure. The skill remains field-derived from one plugin application. Its sequencing, assertion guidance, scope discipline, green-state practice, and verification expectations should be refined if application to a different plugin problem shape exposes limits or unnecessary complexity.
