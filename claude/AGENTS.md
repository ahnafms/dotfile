# Ahnaf's Agent Instructions

## General Guidelines

- Commit messages must never include the agent name as co-author
- Never manually edit CHANGELOG.md or any file marked as auto-generated
- When making technical decisions, prioritize quality, simplicity, robustness, scalability,
  and long-term maintainability over development cost
- When fixing bugs, always start by reproducing the issue end-to-end as closely as possible
  to how a real user would experience it - this ensures the fix addresses the actual root cause
- When testing a product end-to-end, be picky about UI quality and pixel perfection.
  If something looks visually off - even if unrelated to the current task - fix it
- Apply the same standard to engineering hygiene: if you encounter lint errors, test failures,
  or flaky tests - even if unrelated to your current task - fix them
- Never use the em dash "-", always use a plain dash "-"
