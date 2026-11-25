# Skill: Evidence-led plugin review

## Purpose
Review a Neovim plugin change without collapsing observed behaviour, intended policy, implementation, and authorization into one question.

## Procedure
1. Restate the review question and explicit scope.
2. Inspect relevant source and call paths; separate source facts from inference.
3. If behaviour is uncertain, design the smallest diagnostic that exercises the real path.
4. Confirm input delivery and environment before interpreting a failed test as product behaviour.
5. Record the policy decision; do not derive it from current code.
6. Write an observable contract and acceptance criteria before implementation.
7. Decompose implementation by responsibility and dependency.
8. Verify each criterion and report remaining uncertainty.

## Boundaries
- Investigation does not authorize implementation.
- A diagnostic patch is not a production fix.
- Specification agreement is not implementation authorization.
- Do not merge, close issues, or change governance without explicit authorization.
- Do not claim a test proves more than its assertion and environment establish.

## Output
For each finding, identify evidence, interpretation, consequence, confidence, and unresolved questions. Keep proposals separate from source-grounded findings.
