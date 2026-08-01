<p align="center"><img src="docs/banner.png" width="720" alt="claude-harness wordmark on a dark charcoal background with the tagline: plan with /spec, implement with /impl"></p>

<p align="center"><b>The curated core of my Claude Code setup: a plan → implement workflow plus the skills it leans on.</b></p>

<p align="center">
  <a href="https://github.com/badmuriss/claude-harness/stargazers"><img src="https://img.shields.io/github/stars/badmuriss/claude-harness?style=flat-square" alt="GitHub stars"></a>
  <a href="https://github.com/badmuriss/claude-harness/commits/main"><img src="https://img.shields.io/github/last-commit/badmuriss/claude-harness?style=flat-square" alt="last commit"></a>
</p>

<p align="center">
  <a href="#whats-in-it">What's in it</a> ·
  <a href="#install">Install</a>
</p>

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/badmuriss/claude-harness/main/install.sh | bash
```

Or by hand:

```bash
git clone https://github.com/badmuriss/claude-harness ~/.claude-harness && ~/.claude-harness/install.sh
```

## What's in it

- **`/spec <change>`** — plans with an architecture lens (deep modules, deletion test, YAGNI), grills the decisions with you (`grill-with-docs`), and emits an openspec change (`proposal.md`, `design.md`, self-contained `tasks.md`).
- **`/impl <change>`** — dumb dispatcher: delegates each task to subagents (`fast-worker` on the fast tier for mechanical work, `deep-reasoner` on the frontier tier for reasoning), verifies diffs, never writes bulk code itself. It dispatches even when the orchestrator is itself frontier-tier — the win is parallelism and a clean context per task, not capability.
- **`agents/`** — the two subagent definitions `/impl` dispatches to.
- **Skills it leans on** (installed via [skills](https://skills.sh)):
  - [incredibly-pretty-websites](https://github.com/badmuriss/incredibly-pretty-websites) — non-AI-slop frontend
  - [unslop](https://github.com/badmuriss/unslop) — strip AI tells from prose
  - [grill-with-docs](https://github.com/mattpocock/skills) (mattpocock) — decision grilling that updates docs inline
  - [site-audit](https://github.com/badmuriss/site-audit) — live-site audit: UX walkthrough + on-page SEO + Core Web Vitals, hard gates
  - [vercel-react-best-practices](https://github.com/vercel-labs/agent-skills) (Vercel) — 70 React/Next performance rules: waterfalls, bundle size, RSC
