# Makefile - Universal Control Panel for AI-Agentic Workspace
# This provides a standard interface regardless of underlying technology stack

.PHONY: help setup test build run clean

# Default target - show available commands
help:
	@echo "═══════════════════════════════════════════════════════════"
	@echo "  AI-Agentic Workspace - Universal Control Panel"
	@echo "═══════════════════════════════════════════════════════════"
	@echo ""
	@echo "Available targets:"
	@echo "  make setup    - Install dependencies and set up environment"
	@echo "  make test     - Run all tests"
	@echo "  make build    - Build the project"
	@echo "  make run      - Run the application"
	@echo "  make clean    - Clean build artifacts"
	@echo ""
	@echo "⚠️  IMPORTANT: These are placeholders until tech stack is selected"
	@echo "    See docs/AGENT_RULES.md for deployment mandates"
	@echo ""
	@echo "═══════════════════════════════════════════════════════════"

# Setup target - install dependencies
setup:
	@echo "⚠️  Setup logic not yet defined."
	@echo "📝 Action required: Update this after tech stack selection."
	@echo ""
	@echo "Examples by language:"
	@echo "  Python:  pip install -r requirements.txt"
	@echo "  Node:    npm install"
	@echo "  Rust:    cargo fetch"
	@echo "  Go:      go mod download"
	@echo "  Java:    mvn install"

# Test target - run tests
test:
	@echo "⚠️  Test logic not yet defined."
	@echo "📝 Action required: Update this after tech stack selection."
	@echo ""
	@echo "Examples by language:"
	@echo "  Python:  pytest tests/"
	@echo "  Node:    npm test"
	@echo "  Rust:    cargo test"
	@echo "  Go:      go test ./..."
	@echo "  Java:    mvn test"

# Build target - compile/bundle the project
build:
	@echo "⚠️  Build logic not yet defined."
	@echo "📝 Action required: Update this after tech stack selection."
	@echo ""
	@echo "Examples by language:"
	@echo "  Python:  python -m build"
	@echo "  Node:    npm run build"
	@echo "  Rust:    cargo build --release"
	@echo "  Go:      go build -o bin/app"
	@echo "  Java:    mvn package"

# Run target - execute the application
run:
	@echo "⚠️  Run logic not yet defined."
	@echo "📝 Action required: Update this after tech stack selection."
	@echo ""
	@echo "Examples by language:"
	@echo "  Python:  python src/main.py"
	@echo "  Node:    npm start"
	@echo "  Rust:    cargo run"
	@echo "  Go:      go run main.go"
	@echo "  Java:    java -jar target/app.jar"
	@echo ""
	@echo "🎯 Goal: This command should launch the app in one shot"

# Clean target - remove build artifacts
clean:
	@echo "⚠️  Clean logic not yet defined."
	@echo "📝 Action required: Update this after tech stack selection."
	@echo ""
	@echo "Examples by language:"
	@echo "  Python:  rm -rf dist/ build/ *.egg-info __pycache__"
	@echo "  Node:    rm -rf node_modules/ dist/ build/"
	@echo "  Rust:    cargo clean"
	@echo "  Go:      go clean"
	@echo "  Java:    mvn clean"
