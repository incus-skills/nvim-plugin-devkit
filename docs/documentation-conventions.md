# Design-document conventions

A design document should preserve distinctions between intended behaviour, observed implementation, temporary mechanisms, and unbuilt possibilities.

## Status vocabulary
Qualify a mechanism at its first authoritative occurrence:
- **Current contract:** required behaviour or ownership rule.
- **Current implementation:** what code currently does, without implying every detail is required.
- **Transitional:** a temporary mechanism retained while a named capability gap remains; state its exit condition.
- **Potential capability:** a possible future ability, not a current requirement.

“Transitional” is not a synonym for old or undesirable. It needs a capability-based exit condition.

## Two kinds of change
- **Ownership correction:** an operation is valid but executes in the wrong context or under the wrong authority.
- **Capability replacement:** the responsibility remains valid, but the mechanism used to fulfil it is replaced.

## Cross-reference rather than duplicate
State the authoritative contract once. Later sections should reference it and describe only their local mechanism.

## API surface distinctions
Distinguish exported/programmatic entry points from registered mappings and autocmds. State which guarantees govern which surface. Non-use by registered paths does not prove that an exported function is unsupported or deprecated.

## Evidence labels
Where a statement could be mistaken for a stronger claim, label it as source fact, call-path fact, tested observation (with environment), contract decision, inference, or open question.
