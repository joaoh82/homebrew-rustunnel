# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

The Homebrew tap for the `rustunnel` CLI client — a single Ruby formula at `Formula/rustunnel.rb` that lets users install the client via `brew install joaoh82/rustunnel/rustunnel`.

This repo is **almost entirely write-by-CI**. Humans rarely commit here; the formula is regenerated and pushed by the main `rustunnel` repo's release workflow on every non-prerelease tag.

- Local directory: `homebrew-rustunnelcli/`
- Remote: `git@github.com:joaoh82/homebrew-rustunnel.git` (note: GitHub repo name is `homebrew-rustunnel`, no `cli` suffix — Homebrew strips the `homebrew-` prefix to derive the tap name).

## Parent project

**Parent project:** [rustunnel](/Users/joaoh82/projects/rustunnel/CLAUDE.md) — read for shared dev commands, env vars, and cross-service architecture.

### How I fit in

| Sibling | Stack | Role |
|---|---|---|
| `rustunnel/` | Rust (Tokio/Axum/yamux) | Core tunnel server + CLI client + MCP server. **Source of truth** for the binary this formula installs. |
| `rustunnel-web/` | Rust (Axum) + Next.js 15 | Platform API + public website. |
| `rustunnel-admin-dashboard/` | Next.js 14 | Admin dashboard. |
| `rustunnel-landing/` | Next.js 15 | Marketing landing page. |
| `rustunnel-private/` | Markdown / Bash / Ansible | Ops docs and edge provisioning. |
| `docs/` | Mintlify (MDX) | Public documentation site. |
| `homebrew-rustunnelcli/` | Ruby | **This repo.** Homebrew tap for the CLI. |

The CLI binary is built by `rustunnel/`'s release workflow, which then renders the formula template here from the release artifacts' SHA256 checksums and pushes the result. There is no direct runtime dependency from this repo on the others.

## How the release flow works

The formula is **never edited by hand for version bumps**. The pipeline is:

1. A tag like `vX.Y.Z` is pushed in `joaoh82/rustunnel`.
2. `rustunnel/.github/workflows/release.yml` builds binaries for the four targets (macOS arm64/x86_64, Linux arm64/x86_64) and creates a GitHub release.
3. The `update-homebrew` job runs `rustunnel/.github/scripts/update-homebrew-formula.sh`, which:
   - Downloads each release artifact via `gh release download`.
   - Computes its SHA256.
   - Renders `rustunnel/.github/homebrew/rustunnel.rb.template` (substituting `{{VERSION}}` and `{{SHA256_*}}` placeholders).
   - Clones this repo, overwrites `Formula/rustunnel.rb`, and pushes a `chore: update rustunnel formula to X.Y.Z` commit.
4. Pre-releases (tags containing a hyphen, e.g. `v1.0.0-rc1`) are skipped — the workflow only publishes stable tags to the tap.

**Important:** the canonical formula template lives in the `rustunnel/` repo at `.github/homebrew/rustunnel.rb.template`, not here. `Formula/rustunnel.rb` in this repo is a **rendered output** — edits to it will be overwritten on the next release. To change the formula's structure (add deps, change install logic, add a `livecheck` block, etc.), edit the template in `rustunnel/` and the asset list in `update-homebrew-formula.sh`.

## When to edit this repo by hand

Rare, but valid cases:
- Hotfix where you need to flip a SHA256 or version before the next release runs.
- One-off: README, repo description, or licensing changes that aren't part of the templated formula body.
- Backfilling a formula change that hasn't been promoted to the template yet (do this, then immediately mirror the change into `rustunnel/.github/homebrew/rustunnel.rb.template` so the next release doesn't undo it).

If you edit `Formula/rustunnel.rb` directly, also update the template in the parent repo. Otherwise the next release will silently revert your change.

## Common commands

```bash
# Validate the formula syntax locally (requires Homebrew installed)
brew style Formula/rustunnel.rb
brew audit --strict Formula/rustunnel.rb

# Install from this local tap (without publishing)
brew install --build-from-source ./Formula/rustunnel.rb

# Install via the published tap (what users do)
brew install joaoh82/rustunnel/rustunnel

# After upgrading rustunnel, force-refresh the tap
brew update && brew upgrade rustunnel
```

There are no tests, build steps, or CI in this repo itself — the formula's `test do` block is exercised by Homebrew when users run `brew test rustunnel`.

## Repo conventions

- Only `Formula/rustunnel.rb` is meaningful; do not add other formulae unless you're adding a new rustunnel-family CLI.
- Keep commits small and descriptive (CI uses `chore: update rustunnel formula to X.Y.Z` — match that style for human commits).
- Don't commit binaries, tarballs, or generated artifacts.

## Knowledge Base

This project shares its knowledge base with its parent (rustunnel). Do **not** create a separate `projects/homebrew-rustunnelcli/` folder — entries about this child go in the parent's folder.

Project knowledge lives in the private repo **`joaoh82/projects-knowledge`**, cloned at `~/projects/projects-knowledge` (clone to the same path in cloud environments). Follow the repo workflow described in the parent `CLAUDE.md`: pull before writing, work only in the repo working tree (never via the Obsidian vault path), read only this project's folder, and commit + push at session end if anything changed (this notes repo is exempt from the never-touch-`main` rule).

### Project-specific — `~/projects/projects-knowledge/projects/rustunnel/`

- **Code (this child):** `/Users/joaoh82/projects/rustunnel/homebrew-rustunnelcli`
- **Code (parent meta-repo):** `/Users/joaoh82/projects/rustunnel`
- **Context (read first):** `~/projects/projects-knowledge/projects/rustunnel/context.md`
- **Notes (running journal):** `~/projects/projects-knowledge/projects/rustunnel/notes.md`
- **Project wiki:** `~/projects/projects-knowledge/projects/rustunnel/wiki/`

**How to use each:**

- `context.md` — stable background (product goals, stakeholders, domain). Read before starting non-trivial work. Update only when underlying facts change.
- `notes.md` — append-only dated journal. Add entries under `## YYYY-MM-DD` headings for decisions, blockers, TODOs, and incidents — anything worth preserving but not stable enough for `context.md`. Notes about *this child* still go here, in the parent's `notes.md`.
- `wiki/` — reference sub-docs (e.g. `Architecture.md`, `Local Dev Setup.md`, `Tech Services.md`). Create new files as topics emerge. Child-specific reference material can live here too — prefix the filename with the child name (e.g. `homebrew-rustunnelcli — Release Flow.md`) when disambiguation helps.

**When to save:**

- New stable fact about the product/domain → update the parent's `context.md`.
- A decision, incident, or working note → append a dated entry to the parent's `notes.md`.
- Reusable reference material (setup steps, credential locations, architecture) → new/updated file in the parent's `wiki/`.

### Cross-project knowledge — `~/Documents/josh-obsidian-synced/vault/` (Obsidian machines only)

- **General wiki:** `~/Documents/josh-obsidian-synced/vault/wiki/` — start at `_master-index.md`, then drill into the relevant topic's `_index.md`.
- **Raw dumps:** `~/Documents/josh-obsidian-synced/vault/raw/` — drop unprocessed research here as `YYYY-MM-DD-{slug}.md`.

Read the general wiki when the question isn't specific to this project. Drop raw research or imported notes into `vault/raw/` so it's captured even before it's distilled. This vault has not moved to the knowledge repo — it only exists on machines with the Obsidian vault; if the path doesn't exist, skip it.
