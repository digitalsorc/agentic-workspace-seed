# Agentic Workspace Seed

## Overview
This is a **Natural Language-driven (NL-driven) project** designed for purely AI-agentic workflows. The repository structure prioritizes context retention, decision tracking, and natural language specifications over traditional code-first development.

## Philosophy
- **AI agents are the primary developers**: Specifications are written in natural language, and AI agents make technical decisions and generate code
- **Context is king**: All decisions, states, and next steps are explicitly documented to maintain continuity across sessions
- **Documentation drives development**: Requirements and architectural decisions precede implementation
- **High-context structure**: The repository is organized to maximize AI agent understanding and minimize context loss

## Repository Structure

```
agentic-workspace-seed/
├── .github/
│   └── workflows/
│       └── ci_pipeline.yml    # CI/CD automation
├── docs/                      # Requirements and documentation
│   ├── AGENT_RULES.md        # Rules for AI agents
│   └── .gitkeep              # Placeholder
├── Makefile                   # Universal control panel
├── active_context.md          # Current state, tech stack, and next steps
├── tech_stack_decisions.md    # Technology decision log
└── README.md                  # This file
```

## Getting Started

### For AI Agents
1. Read `active_context.md` to understand the current state
2. Review `tech_stack_decisions.md` for technology choices and rationale
3. Check `docs/` for requirements and specifications
4. Document all decisions in the appropriate files
5. Update `active_context.md` with progress and next steps

### For Humans
1. Provide requirements in natural language in the `docs/` folder
2. Review AI-generated decisions in `tech_stack_decisions.md`
3. Check `active_context.md` for current progress and status
4. Guide AI agents through natural language instructions

## Key Files

- **`Makefile`**: Universal control panel providing standard interface (setup/test/build/run/clean)
- **`active_context.md`**: Living document tracking current state, active decisions, and immediate next steps
- **`tech_stack_decisions.md`**: Chronological log of all technical decisions with rationale
- **`docs/AGENT_RULES.md`**: Mandatory rules for AI agents, including deployment mandates
- **`docs/`**: Requirements, specifications, and project documentation
- **`.github/workflows/ci_pipeline.yml`**: Automated CI/CD pipeline for instant testability

## Development Workflow

1. **Specification Phase**: Define requirements in natural language
2. **Planning Phase**: AI agents propose technical approaches
3. **Decision Phase**: Document technology choices with rationale
4. **Implementation Phase**: AI agents generate code based on specifications
5. **Testing Phase**: Automated CI runs `make test` on every commit
6. **Build Phase**: Automated CI runs `make build` to verify compilation
7. **Iteration Phase**: Refine based on feedback, updating context continuously

## Universal Control Panel (Makefile)

This repository enforces **"Instant Testability"** and **"Auto-Builds"** through a standard Makefile interface:

```bash
make setup    # Install dependencies
make test     # Run tests
make build    # Build the project
make run      # Run the application
make clean    # Clean artifacts
```

These commands work consistently regardless of the underlying technology stack (Python, Node, Rust, Go, etc.). The Makefile contains placeholders until a tech stack is selected, at which point AI agents must update it with actual implementation.

## Continuous Integration

Every push triggers automated testing via GitHub Actions:
- Runs `make setup` to prepare environment
- Runs `make test` to validate code quality
- Runs `make build` to ensure compilation succeeds

This ensures that breaking changes are caught immediately.

## Contributing

This project is designed for AI-agentic workflows. When contributing:
- Always update `active_context.md` with changes
- Log technical decisions in `tech_stack_decisions.md`
- Keep documentation in natural language, clear and comprehensive
- Maintain high context - future AI agents (and humans) should understand decisions without external information

## License

[Add your license here]
