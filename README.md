# claude-harness

The curated core of my Claude Code setup: a plan → implement workflow plus the skills it leans on.

## What's in it

- **`/spec <change>`** — plans with an architecture lens (deep modules, deletion test, YAGNI), grills the decisions with you (`grill-with-docs`), and emits an openspec change (`proposal.md`, `design.md`, self-contained `tasks.md`).
- **`/impl <change>`** — dumb dispatcher: delegates each task to subagents (`fast-worker`/Sonnet for mechanical work, `deep-reasoner`/Opus for reasoning), verifies diffs, never writes bulk code itself.
- **`agents/`** — the two subagent definitions `/impl` dispatches to.
- **Skills it leans on** (installed via [skills](https://skills.sh)):
  - [incredibly-pretty-websites](https://github.com/badmuriss/incredibly-pretty-websites) — non-AI-slop frontend
  - [unslop](https://github.com/badmuriss/unslop) — strip AI tells from prose
  - [grill-with-docs](https://github.com/mattpocock/skills) (mattpocock) — decision grilling that updates docs inline
  - [site-audit](https://github.com/badmuriss/site-audit) — live-site audit: UX walkthrough + on-page SEO + Core Web Vitals, hard gates

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/badmuriss/claude-harness/main/install.sh | bash
```

Or by hand:

```bash
git clone https://github.com/badmuriss/claude-harness ~/.claude-harness && ~/.claude-harness/install.sh
```
