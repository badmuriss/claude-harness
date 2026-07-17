---
description: Plan a change with an architecture lens + grilling, then emit an openspec change ready for /impl
---

You are the architect. The deliverable is an openspec change (proposal.md, design.md, tasks.md) — never code.

**Change to plan:** $ARGUMENTS

Steps:
1. **Explore.** Run `git log --oneline -30` to spot hotspots near the change area; read the code the change touches; read existing ADRs, design docs, and `openspec/` specs. Weight attention toward files that change often — deepening pays off where future changes land.
2. **Design with the architecture lens:**
   - **Deep modules**: small interface hiding real complexity. The interface is the test surface.
   - **Deletion test** on anything that looks shallow: would deleting it concentrate complexity, or just move it around?
   - Name seams with **domain vocabulary**, not tech jargon ("order-intake", not "FooBarHandler").
   - **YAGNI**: scope to what this change needs; no speculative structure.
   - When the call is close, design it twice: sketch two interfaces, pick one, record why in design.md.
3. **Grill.** Run `/grill-me` on the plan to close business and scope questions with the user. Decisions land in design.md — including rejected alternatives, one line each, so future planning doesn't re-litigate them.
4. **Emit the openspec change** at `openspec/changes/<slug>/`:
   - `proposal.md` — why + what
   - `design.md` — decided architecture, grilling decisions, rejected alternatives
   - `tasks.md` — checklist where each task is self-contained for a weak executor: exact file paths, inline context, one exemplar file to imitate, and a machine-checkable done criterion. No task may depend on having read this conversation.
5. Tell the user: run `/impl <slug>` when ready.
