# Agent Rules and Guidelines

## 🚨 Mandatory Rules for All AI Agents

### Before Starting Work
Every AI agent **MUST** perform these steps before beginning any task:

1. **Read `active_context.md` completely**
   - Understand the current high-level goal
   - Review the current architecture and tech stack
   - Check the active to-do list
   - Note all memory, constraints, and blockers

2. **Review `tech_stack_decisions.md`**
   - Understand past technical decisions and their reasoning
   - Avoid contradicting previous decisions without good reason
   - Learn from alternatives that were considered and rejected

3. **Check `docs/` folder**
   - Read all requirement documents
   - Understand specifications and constraints
   - Identify any new requirements or changes

### During Work
Every AI agent **MUST** follow these practices:

1. **Maintain Context**
   - Document your thought process and decisions
   - Explain why you chose a particular approach
   - Note any assumptions you're making

2. **Make Minimal Changes**
   - Only change what's necessary to accomplish the goal
   - Don't refactor unrelated code
   - Preserve existing functionality unless explicitly asked to change it

3. **Document Decisions**
   - Add significant technical decisions to `tech_stack_decisions.md`
   - Use the table format provided
   - Include alternatives considered and reasoning

### Before Finishing Work
Every AI agent **MUST** perform these steps before ending a session:

1. **Update `active_context.md`**
   - Update the "Last Updated" date
   - Mark completed tasks in the Active To-Do List
   - Add new tasks if they emerge
   - Update Current High-Level Goal if it changed
   - Add to Memory & Constraints if you discovered new information
   - Update Architecture & Tech Stack if you made changes
   - Leave notes for the next agent in the appropriate section

2. **Commit Changes with Clear Messages**
   - Write descriptive commit messages
   - Explain what changed and why
   - Reference related issues or requirements

3. **Update Documentation**
   - Ensure README reflects current state if you made structural changes
   - Add or update docs/ files if you implemented new features
   - Keep documentation in sync with code

---

## 🎯 Core Principles

### 1. Context Preservation
- **Every decision should be traceable:** Future agents should understand why choices were made
- **No implicit knowledge:** Don't assume the next agent knows what you know
- **Document assumptions:** Make your assumptions explicit

### 2. Natural Language First
- **Requirements drive implementation:** Code follows specifications, not the other way around
- **Clarity over brevity:** Be clear and comprehensive in documentation
- **Human-readable:** Write for both AI agents and humans

### 3. Incremental Progress
- **Small, verifiable steps:** Make changes incrementally
- **Test as you go:** Validate changes before moving forward
- **Report progress frequently:** Keep stakeholders informed

### 4. High-Quality Output
- **Follow existing patterns:** Maintain consistency with the codebase
- **Write clean code:** Follow best practices and style guides
- **Security first:** Never introduce vulnerabilities

---

## 📋 Common Workflows

### Starting a New Feature
1. Read active_context.md and understand current state
2. Check docs/ for feature requirements
3. Update active_context.md with your plan (add to To-Do List)
4. Make technical decisions and log in tech_stack_decisions.md
5. Implement the feature incrementally
6. Update active_context.md with completion status
7. Update README if the feature affects usage

### Fixing a Bug
1. Read active_context.md to understand system state
2. Investigate and identify root cause
3. Document findings in active_context.md (Memory & Constraints)
4. Implement fix with minimal changes
5. Test the fix thoroughly
6. Update active_context.md to mark task complete
7. Document any architectural insights gained

### Refactoring
1. Read active_context.md and tech_stack_decisions.md
2. Ensure refactoring aligns with project goals
3. Document the refactoring decision in tech_stack_decisions.md
4. Update active_context.md with refactoring plan
5. Perform refactoring incrementally with tests
6. Update active_context.md to reflect new architecture
7. Update documentation to reflect changes

---

## 🚀 Executable & Deployment Mandates

This section enforces **"Instant Testability"** and **"Auto-Builds"** for all projects. These are non-negotiable requirements.

### Universal Control Panel (Makefile)

The repository includes a `Makefile` that serves as a **standard interface layer**. This ensures consistency regardless of the underlying technology stack.

**Available targets:**
- `make setup` - Install dependencies and set up environment
- `make test` - Run all tests
- `make build` - Build/compile the project
- `make run` - Run the application
- `make clean` - Clean build artifacts

**Current Status:** Placeholders are in place until tech stack is selected.

### Deployment and Delivery Rules

#### Rule 1: Immediate Makefile Implementation
**Upon selecting a tech stack, YOU MUST immediately replace the Makefile placeholders with actual commands for that language.**

Examples:
- **Python:** `pip install -r requirements.txt`, `pytest tests/`, `python src/main.py`
- **Node.js:** `npm install`, `npm test`, `npm run build`, `npm start`
- **Rust:** `cargo fetch`, `cargo test`, `cargo build --release`, `cargo run`
- **Go:** `go mod download`, `go test ./...`, `go build -o bin/app`, `./bin/app`
- **Java:** `mvn install`, `mvn test`, `mvn package`, `java -jar target/app.jar`

**Action Items:**
1. Update each Makefile target with the appropriate commands
2. Test that `make setup && make test && make build && make run` works end-to-end
3. Document any prerequisites in README.md
4. Update `active_context.md` to reflect tech stack implementation

#### Rule 2: Standalone Artifact Requirement
**Every project MUST produce a standalone, deployable artifact.**

This ensures the project can be deployed anywhere without manual dependency management.

**Implementation by project type:**

- **Script/CLI Tool:**
  - Wrap in a Dockerfile: `docker build -t app . && docker run app`
  - OR use packaging tools: PyInstaller (Python), pkg (Node), cargo build --release (Rust)
  
- **Web Application:**
  - Provide `docker-compose.yml` for full-stack setup
  - OR provide Dockerfile with clear `make run` integration
  
- **Library/Package:**
  - Build distributable package (wheel, npm package, crate, JAR)
  - Document installation and usage in README.md

- **Microservice:**
  - Containerize with Dockerfile
  - Provide kubernetes manifests or docker-compose.yml
  - Include health check endpoints

**Deliverables:**
- If Dockerfile: Must build and run with `docker build` and `docker run`
- If docker-compose: Must start with `docker-compose up`
- Document deployment in `docs/DEPLOYMENT.md`

#### Rule 3: One-Shot Execution
**The `make run` command must always launch the application in a one-shot command without manual setup.**

**Requirements:**
- No manual dependency installation required before `make run`
- No manual configuration file editing required
- Environment variables documented and have sensible defaults
- Database migrations run automatically if needed
- `make setup` handles all prerequisites

**Good Examples:**
```bash
# User runs this once
make setup

# Then this always works
make run
```

**Bad Examples (DO NOT DO THIS):**
```bash
# ❌ Requires manual steps
pip install -r requirements.txt
export API_KEY=xyz
python migrate.py
python app.py
```

**Implementation Checklist:**
- [ ] `make setup` installs all dependencies
- [ ] `make setup` creates config files with defaults
- [ ] `make run` checks for setup completion
- [ ] `make run` executes the app in one command
- [ ] Environment variables have defaults or `.env.example` exists
- [ ] README documents any required secrets/API keys

### Continuous Integration (CI) Requirements

The repository includes `.github/workflows/ci_pipeline.yml` that automatically runs on every push.

**Current CI Flow:**
1. Checkout code
2. Run `make setup`
3. Run `make test`
4. Run `make build`

**After Tech Stack Implementation:**
1. Remove `continue-on-error: true` flags from CI workflow
2. Ensure all tests pass in CI
3. Failed builds must block merges
4. Update CI workflow if additional steps are needed (linting, security scans, etc.)

**CI Expansion Options:**
- Add `make lint` target and call it in CI
- Add security scanning (e.g., Snyk, CodeQL)
- Add coverage reporting
- Add deployment steps for staging/production
- Add container image building and pushing

### Enforcement

These rules are **mandatory** and will be checked:

1. ✅ Makefile exists with all targets implemented (not placeholders)
2. ✅ `make setup && make test && make build && make run` works end-to-end
3. ✅ CI pipeline passes on all commits
4. ✅ Standalone artifact is producible
5. ✅ Deployment documentation exists

**Violations will require immediate remediation before proceeding with new features.**

---

## ⚠️ What NOT to Do

- **Don't skip reading active_context.md** - You'll miss critical context
- **Don't make undocumented decisions** - Future agents won't understand your choices
- **Don't generate code without requirements** - This is an NL-driven project
- **Don't leave active_context.md outdated** - It's the source of truth
- **Don't contradict tech_stack_decisions.md** - Without documenting why
- **Don't remove working code** - Unless explicitly required
- **Don't introduce security vulnerabilities** - Security is paramount
- **Don't forget to update before finishing** - Context continuity depends on it

---

## 🤝 Working with Multiple Agents

If multiple agents are working on the same repository:

1. **Always pull latest changes** before starting work
2. **Communicate through active_context.md** - Leave notes for other agents
3. **Use clear commit messages** - Others need to understand your changes
4. **Avoid conflicts** - Check if another agent is working on the same area
5. **Resolve conflicts carefully** - Preserve both agents' work when possible

---

## 📚 Additional Resources

- **README.md**: Project overview and philosophy
- **active_context.md**: Current state and to-do list
- **tech_stack_decisions.md**: Technical decision log
- **docs/**: Requirements and detailed documentation

---

## ✅ Checklist for Every Session

Use this checklist at the start and end of every work session:

**Before Starting:**
- [ ] Read active_context.md completely
- [ ] Review tech_stack_decisions.md
- [ ] Check docs/ for requirements
- [ ] Understand current goal and constraints

**Before Finishing:**
- [ ] Update active_context.md (Last Updated, To-Do List, etc.)
- [ ] Log any tech decisions in tech_stack_decisions.md
- [ ] Commit changes with clear messages
- [ ] Update documentation as needed
- [ ] Leave notes for next agent

---

*These rules ensure continuity, quality, and context preservation across all AI agent sessions.*
