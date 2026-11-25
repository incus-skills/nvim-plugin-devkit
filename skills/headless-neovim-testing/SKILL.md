# Skill: Test live Neovim interaction headlessly

## Use when
A test must exercise mappings, Insert-mode input, autocmd ordering, or behaviour dependent on Neovim's real input/event loop.

## Procedure
1. Establish the exact Neovim version and headless invocation.
2. Deliver user input through nvim_input() when the input pipeline is part of the behaviour.
3. Encode literal key-notation characters using <lt> where needed.
4. Use explicit \r for Return in tested Insert-mode input sequences when appropriate.
5. Queue mode-entry and dependent keystrokes together if no scheduled callback may run between them.
6. Return from synchronous startup commands before waiting for queued input to be consumed.
7. Use vim.wait() with a predicate over observable mode/buffer state; avoid fixed sleeps.
8. Assert exact resulting text and relevant plugin side effects.

## Failure localization
Check key delivery, mode transition, buffer mutation, callback execution, and plugin effect in that order. Do not diagnose a product defect when intended input never reached the buffer.

## Evidence to report
Include input sequence, observed mode, relevant buffer lines, Neovim version, and exact failing assertion.
