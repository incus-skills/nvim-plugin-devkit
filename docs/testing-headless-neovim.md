# Headless Neovim interaction testing

Headless tests should distinguish test-harness delivery from plugin behaviour. Establish that Neovim received the intended input before asserting the plugin's response.

## Live Insert-mode input
When mappings or event behaviour depend on Neovim's real input pipeline, use nvim_input() rather than directly setting final buffer contents. Direct buffer setup remains useful for unit tests but does not prove mapping behaviour.

Patterns established in nvim-heredoc:
- Use nvim_input() to queue user input.
- Encode literal angle-bracket key notation with <lt> where required; literal << is represented as <lt><lt>.
- Use explicit carriage return \r to deliver Return in tested Insert-mode sequences; do not assume newline \n is equivalent.
- Put mode-entry and dependent keystrokes in the same nvim_input() call when their scheduling relationship matters.
- Observe mode and buffer state with vim.wait() on an observable predicate, not a fixed sleep.
- If loaded from a synchronous startup -c command, defer observation until that command returns and Neovim's input loop can consume queued keys.

Example shape:

    api.nvim_input("o<your literal key notation>\r")
    vim.defer_fn(function()
      local ready = vim.wait(1000, function()
        return vim.api.nvim_get_mode().mode == "i"
          and vim.api.nvim_buf_line_count(0) == expected_line_count
      end, 10)
      assert(ready, "expected input-driven state was not reached")
    end, 20)

Adapt the mode-entry key and predicate. This is not a drop-in helper for every mapping.

## Scheduling boundaries
If behaviour depends on two consecutive user actions occurring before a scheduled callback runs, queue both actions in one input batch. Separate calls can allow Neovim to process scheduled work between them. Apply this constraint only when the real interaction requires that ordering; also test separate-batch behaviour when that boundary is part of the product contract.

## Diagnose in layers
1. Did Neovim receive the intended keys?
2. Did the expected mode transition occur?
3. Did the expected buffer edit occur?
4. Did the plugin callback run?
5. Did the plugin produce the expected effect?

A failure at an earlier layer does not establish a defect in a later one. Record Neovim version, invocation, input sequence, observed mode, buffer contents, and relevant callback observations.
