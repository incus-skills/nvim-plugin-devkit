# Skill: Review plugin design documentation

## Purpose
Keep contracts, implementation facts, transitional mechanisms, and future ideas distinguishable.

## Procedure
1. Identify the authoritative statement of each behaviour.
2. Qualify mechanisms as current contract, current implementation, transitional, or potential capability.
3. For transitional mechanisms, name the capability gap and a testable exit condition.
4. Separate ownership corrections from capability replacements.
5. Distinguish registered event paths from exported/programmatic entry points.
6. Replace duplicated contract text with precise cross-references.
7. Label source facts, call-path facts, tested observations, policy decisions, inferences, and open questions.

## Review test
Ask whether a future reader could mistake an implementation detail for a requirement, a temporary workaround for permanent architecture, an unbuilt capability for a current feature, a callback's access to data for authority to mutate it, or non-use of an API for a lifecycle decision. If so, revise the documentation.
