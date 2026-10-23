# Habit Distiller Skills (Work-Contract Guardian & Habit Distillation System)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production%20Ready-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/Version-2.9.0-blue.svg" alt="Version">
  <img src="https://img.shields.io/badge/Edition-Full%20Featured-purple" alt="Full Featured">
  <img src="https://img.shields.io/badge/Lightweight%20Branch-Available-orange" alt="Lightweight">
  <img src="https://img.shields.io/badge/LLMs.txt-Supported-blue" alt="llms.txt">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Codebase%20Pollution-0%25-brightgreen" alt="Zero Pollution">
</p>

[**中文文档 (Chinese)**](README.md) | [🌿 **Lightweight Branch**](https://github.com/Ikaros-521/habit-distiller-skills/tree/lightweight) | [📄 **llms.txt**](llms.txt)

> 💡 **Edition Guide**:
> - **Main Edition (`main`)**: **Full-Featured Governance Edition** (lossless heading self-healing, multi-profile switcher, fact-based compliance proof, unified conflict resolution, workspace cascading).
> - **Lightweight Edition (`lightweight`)**: **KISS Minimalist Edition** (35-line lean definition, strictly focused on 3-step habit distillation). Visit the 👉 [**lightweight branch**](https://github.com/Ikaros-521/habit-distiller-skills/tree/lightweight).

---

## 🇺🇸 Overview

**Habit Distiller Skills (v2.9)** is a zero-intrusion work-contract guardian, structural heading self-healer, transparent rollback confirmer, and factual tool-resilient pairing system for modern AI IDEs and agents (Trae, Claude Code, Cursor, Antigravity, Windsurf, etc.).

It firmly establishes a foundational truth: **the system extracts not the model's ego or habits, but the explicit contract for how the developer expects the AI to work**. Through lossless structural heading self-healing, clear rollback explanations, factual tool error transparency, in-memory zero-tool caching on fast path, and dynamic language scoping, it delivers a transparent, controllable, and pristine AI pair-programming experience.

---

### 📊 Ecosystem Comparison

| Dimension | Habit Distiller Skills | Project Rules (.cursorrules / CLAUDE.md) | Vector Memory (Mem0 / Letta) | Custom Instructions (Web UI) |
| :--- | :--- | :--- | :--- | :--- |
| **Codebase Pollution** | 🟢 **0% Clean** (`~/.habit-distiller`) | 🔴 **High** (pollutes git history) | 🟡 **Medium** (requires external DB) | 🟢 **0% Clean** |
| **Cross-IDE Portability** | 🟢 **Universal** (Claude Code, Trae, Antigravity, Cursor) | 🔴 **Vendor-locked** | 🟡 **Requires SDK integrations** | 🔴 **Single Web UI only** |
| **Maintenance Overhead** | 🟢 **Zero Dependencies (KISS & Markdown)** | 🔴 **Manual repetitive edits** | 🔴 **High** (Python, vector DBs, API keys) | 🔴 **Static text, cannot evolve** |
| **Dialogue Extraction** | 🟢 **Natural language distillation with human-in-the-loop** | 🔴 **Not supported** | 🟢 **Supported** | 🔴 **Not supported** |
| **Safety & Undo** | 🟢 **Atomic `.bak` snapshots, instant rollback** | 🔴 **Requires git revert** | 🟡 **Blackbox vector states** | 🔴 **No rollback history** |

---

### 🌟 New in v2.9: Structural Resilience & Transparent Rollback

#### 1. Structural Heading Lossless Self-Healing
- If canonical domain headers (e.g. `## 2. 缺陷修复与防线规范`) are accidentally deleted during manual editing:
- AI automatically restores missing structural headings upon re-saving, leaving 100% of the developer's surviving rules, comments, and custom items intact.

#### 2. Transparent Rollback Confirmation
- Triggering natural language rollback (*"撤回刚才的习惯更新"*):
- AI performs physical atomic restoration via `habits.md.bak` and explicitly explains what snapshot timestamp was restored and which rule was revoked.

#### 3. Factual Tool Error Reporting & User Control
- When automated test verifications (e.g. `npm test`) encounter environmental tool crashes (port collisions, network timeouts, missing runtimes):
- AI maintains delivery dashboard composure, succinctly recording the factual error in the audit row and returning repair control to the developer.

#### 4. Unified Conflict Presentation & User Resolution
- Never make unilateral assumptions when rules clash (intra-profile contradiction, drift, or new vs old); clearly present rule tension and root causes for developer resolution.

#### 5. Zero-Tool Latency on Fast Path
- In-memory caching preserves sub-second response speeds without unnecessary disk reads during everyday Q&A.

#### 6. Dynamic Language-Scope Filtering
- Automatically activates language-specific rules (`[Scope: go]`, `[Scope: ts]`) matching the active file extensions, leaving un-matched rules quiet.

---

### 🗂️ Domain Taxonomy (v2.9)

1. 🧠 **`[DOMAIN: COGNITION]` Proactive Cognitive Deduction**: Think 1~2 steps ahead on deep tasks, exposing blind spots and lifecycle hazards;
2. 🛡️ **`[DOMAIN: DEFECT]` Chain Defect Elimination**: Sweep and eliminate linked collateral defects thoroughly without regression;
3. 📡 **`[DOMAIN: PROGRESS]` Observable Progress & Intent Adaptability**: Fast-path micro-task direct answers, deep-path progress heartbeats;
4. 📊 **`[DOMAIN: DELIVERY]` Dual-Track Delivery Dashboard**: Structural Before/After comparative tables and fact-based verification proofs;
5. 🌐 **`[DOMAIN: DOCS]` Bilingual Documentation Protocol**: Dual standalone files (`README.md` & `README_en.md`) with reciprocal header links;
6. 🚫 **`[DOMAIN: FORBIDDEN]` Red-Line Guardrails**: Strict prohibition of unapproved heavy dependencies, comment deletions, and hardcoded keys.

---

### 🚀 Installation & Cross-Machine Sync

#### Global Installation (Universal across all skills-compatible AI IDEs)

```bash
# Option A: Install Full-Featured Edition (main branch)
npx skills add Ikaros-521/habit-distiller-skills -g

# Option B: Install Minimalist Lightweight Edition (lightweight branch)
npx skills add Ikaros-521/habit-distiller-skills#lightweight -g
```

#### Portable Shell Management Scripts
```powershell
# Windows PowerShell
.\scripts\sync.ps1 -Target install-global                    # Install & mount globally
.\scripts\sync.ps1 -Target init-workspace -ProfileName work  # Bind workspace to work profile (0% pollution)
.\scripts\sync.ps1 -Target switch-profile -ProfileName work   # Switch active profile globally
.\scripts\sync.ps1 -Target list-profiles                     # List local available profiles
.\scripts\sync.ps1 -Target export -FilePath .\my-habits.md   # Export active habits
.\scripts\sync.ps1 -Target import -FilePath .\my-habits.md   # Import habits (with security scan)
```

```bash
# macOS / Linux Bash
./scripts/sync.sh install-global                             # Install & mount globally
./scripts/sync.sh init-workspace work                        # Bind workspace to work profile (0% pollution)
./scripts/sync.sh switch-profile open-source                 # Switch to open-source profile
./scripts/sync.sh list-profiles                              # List local available profiles
./scripts/sync.sh export ./my-habits.md                      # Export active habits
./scripts/sync.sh import ./my-habits.md                      # Import habits (with security scan)
```

---

## 📄 License
[MIT License](LICENSE) © 2026 LuoXi
