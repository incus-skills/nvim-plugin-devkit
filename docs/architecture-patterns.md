# Architecture patterns for stateful buffer plugins

These patterns derive from nvim-heredoc. They are relevant when a plugin interprets buffer contents, maintains derived state, and responds to multiple editing events. They are not required for simple mappings or stateless plugins.

## Event scope and processing scope
Define what each event may do independently of what shared helpers can do. Enforce ownership structurally: a deferred callback should not reach an operation reserved for a synchronous user action merely because both paths share a helper.

- Event scope: the user action or lifecycle transition authorizing an operation.
- Processing scope: the portion of buffer or derived state a callback may inspect or mutate.

A callback that can see the whole buffer is not thereby authorized to rewrite it.

## Batch ownership and generation
When edits are accumulated for deferred processing, define batch boundaries, ownership of pending edit evidence, coordinate rebasing, snapshot invalidation, and the point at which a new snapshot becomes authoritative.

If synchronous and deferred paths can both consume the same edit evidence, specify a single owner and a generation/version check. Avoid allowing the first convenient range to commit a snapshot that silently discards unprocessed evidence. This is not a prescription to add generation counters to every plugin.

## Checkpoint-based incremental maintenance
For a buffer with lexical or structural interpretation, a bounded maintenance cycle may:
1. identify invalidated known boundaries;
2. select a surviving checkpoint before the affected area;
3. rescan the necessary region;
4. validate candidate boundaries against fresh source;
5. merge confirmed results with unaffected state;
6. publish the updated snapshot atomically.

Checkpoint definitions, invalidation predicates, and merge semantics are domain-specific. Test edits that move, remove, merge, or split ranges.

## Three-valued queries and sound absence
A query such as “is the cursor in a protected region?” may have three outcomes:
- positive: evidence establishes membership;
- negative: evidence establishes non-membership;
- uncertain: available evidence establishes neither.

Do not collapse uncertainty into a negative answer when that answer authorizes a mutation. Decline the mutation or use a separately specified safe fallback.

A freshly recognized construct may be a special pre-commit state and legitimately produce a negative membership result even when the overall scan is incomplete. Such exceptions require positive evidence, not a guess based on missing records.

Invariant: absence of a positive match is not proof of a negative match unless observation is complete or an explicit evidence-backed exception applies.

## Retained APIs and registered paths
When a module exports functions and registers event callbacks, document which contract governs each surface. Do not generalize event-path guarantees to all programmatic callers, or infer API lifecycle status from non-use in the event path.
