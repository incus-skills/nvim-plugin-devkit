# Evidence-led review process

Use this process when observed behaviour, intended behaviour, and implementation responsibility may differ. Scale it to the uncertainty; do not force every change through every stage.

## 1. Establish the question and boundary
Record the concrete question, affected behaviour, relevant code paths, and explicit exclusions. Separate a request to investigate from permission to change code.

## 2. Observe before deciding policy
When behaviour is uncertain, create the smallest diagnostic that makes it observable. Exercise the real path where feasible; report environment and versions; distinguish input-delivery failure from product behaviour; avoid production changes merely to make the observation pass. A diagnostic establishes what happened under tested conditions, not what ought to happen.

## 3. Adjudicate desired behaviour
Make the policy decision explicit. Record rationale, safety properties, permitted side effects, and the response to incomplete evidence. Do not infer policy from current implementation.

## 4. Specify before implementation
Write an observable contract and acceptance criteria. Include positive, negative, boundary, and uncertainty cases where relevant. Trace each criterion to its responsible layer and test path. Specification agreement and implementation authorization are separate.

## 5. Decompose implementation
Split work by responsibility and dependency. Each change should have bounded scope, an independently meaningful test, and a clear relationship to the accepted contract.

## 6. Verify and report
Separate source facts, tested observations and their environment, inferences, unresolved questions, CI results, changes made, and deliberately untouched areas. A green test establishes only its tested assertion in its tested environment.

## Working rules
- Investigation is not implementation authorization.
- Visibility does not confer authority: access to broad state does not grant permission to mutate it.
- Prefer diagnostic evidence over assumptions about event ordering or user input.
- Do not turn a local fix into a general architecture without evidence.
- Preserve unresolved questions rather than manufacturing closure.
- Close issues only when their stated work is complete and closure is authorized.
