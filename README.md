# BA requirements skills

Three Agent Skills for business analysts working with requirements. They use the open `SKILL.md` format, so the same folders work in GitHub Copilot and Microsoft 365 Copilot.

| Skill | What it does | Typical prompt |
|---|---|---|
| `requirements-drafting` | Turns notes, transcripts, emails and documents into structured, traceable requirements with acceptance criteria and open questions | "Draft requirements from these workshop notes" |
| `requirements-contradictions` | Finds conflicts within or between sources and produces a conflict register with resolution questions | "Check these documents for contradictions" |
| `requirements-gap-analysis` | Finds missing or incomplete requirements, or compares two baselines (sources vs spec, as-is vs to-be, requirements vs product, requirements vs regulation) | "Run a gap analysis of the spec against the workshop notes" |

Suggested workflow: draft → check contradictions → check gaps → resolve open questions with stakeholders → repeat.

## Install

Copy each skill folder as a whole (including `references/`). The folder name must stay the same as the `name` in its `SKILL.md`.

**GitHub Copilot (VS Code, CLI, cloud agent)**
- For one repository: `.github/skills/<skill-name>/`
- For yourself across projects: `~/.copilot/skills/<skill-name>/`

**Microsoft 365 Copilot**
- Copilot Cowork: put the folders in OneDrive under `/Documents/Cowork/skills/`, or import them from the Skills tab on Cowork's Customize page.
- Copilot Chat: upload them as skills (rolling out October–November 2026).
- Org-wide: ask your admin to package and deploy them as a plugin from the Microsoft 365 admin center.

## Customize before rolling out to a team

- **Precedence rules** (contradictions skill, Step 1): replace the default source order with your organization's rules.
- **ID scheme and types** (drafting skill, Step 4): replace the default prefixes with your house scheme.
- **House template** (drafting skill, `references/output-template.md`): replace with your BRD/SRS or backlog template.
- **Checklist** (gap analysis skill, `references/completeness-checklist.md`): add domain-specific items (for example banking, healthcare or public sector obligations).

## Frontmatter

Each `SKILL.md` uses only `name` and `description`, the two required fields of the Agent Skills specification, so the skills load the same way everywhere. For GitHub Copilot in VS Code you can optionally add:

- `argument-hint: "[source files or folder]"` to show a hint when the skill is used as a slash command.
- `context: fork` (experimental) to run the analysis in a separate subagent so long source reads do not fill the main conversation.

Leave auto-invocation on (no `disable-model-invocation`): these skills only read and report, so there are no side effects to guard against.

## Quick install on Windows (GitHub Copilot / VS Code)

Download and extract this repository, or clone it. Open PowerShell in the extracted repository folder and run:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\Install-Skills.ps1
```

The installer copies all three skills, including their references, to `%USERPROFILE%\.copilot\skills`, verifies the copied files, and stops if a skill folder already exists. Restart VS Code after installation.

Open a project folder in VS Code, add your source documents, then use Copilot Chat in Agent mode. Example prompts:

- "Use requirements-drafting to draft requirements from these workshop notes."
- "Use requirements-contradictions to check these documents for conflicts."
- "Use requirements-gap-analysis to check this specification for missing requirements."
