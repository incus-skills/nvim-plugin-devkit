# Adopting and validating the kit

This repository began with one plugin. Its patterns are field-derived, not yet proven universal.

## First adaptation
Start with the smallest useful subset: conventional module layout, explicit user-visible contract, separate unit and live-interaction tests, and CI jobs only for distinct evidence layers the plugin needs. Adopt state-maintenance machinery only if the plugin maintains derived state that must survive edits and asynchronous callbacks.

## Transfer test
Treat the first independent plugin built using this kit as a test of transferability. Record which guidance applied directly, required adaptation, was irrelevant, was missing, or caused unnecessary complexity.

A mismatch is not automatically a template defect. It may show that the original pattern was conditional on the nvim-heredoc problem shape.

## Promotion rule
Promote a project-derived observation to a reusable recommendation only when its original context and evidence are recorded, applicability conditions are stated, a second context has exercised it (or its limited scope is explicit), and counterexamples and costs are documented.

Avoid numerical claims about the percentage of reusable content until a transfer exercise supports them.
