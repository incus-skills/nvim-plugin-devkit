# Skill: Review stateful buffer architecture

## Use when
A plugin interprets buffer contents, maintains derived state, or combines synchronous editing actions with deferred callbacks.

## Review questions
- What state is derived from the buffer, and who owns its validity?
- Which events may inspect or mutate which regions?
- Can multiple callbacks consume the same pending edit evidence?
- How are changed ranges represented when earlier edits shift later coordinates?
- What invalidates a checkpoint or snapshot?
- How is a candidate boundary revalidated against current source?
- Is updated state published atomically?
- What happens when observation is incomplete?

## Safety checks
- Broad visibility does not imply broad mutation authority.
- A deferred path must not accidentally perform an operation reserved for a synchronous action.
- Incomplete observation must not be treated as proof of absence when that authorizes a risky edit.
- A special negative result under incomplete observation requires positive evidence and a regression test.
- Distinguish programmatic APIs from registered event paths.

## Do not over-apply
Do not introduce generations, checkpoints, transactions, or tri-state results merely because they appear here. First establish the corresponding state, concurrency, or uncertainty problem.
