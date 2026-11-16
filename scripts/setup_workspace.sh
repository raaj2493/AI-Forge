
#!/bin/bash
set -e

modules=(
  "00-setup"
  "01-llm-fundamentals"
  "02-prompt-engineering"
  "03-rag-foundations"
  "04-advanced-rag"
  "05-agents-and-tools"
  "06-multi-agent-and-mcp"
  "07-observability-and-security"
  "08-deployment-and-capstone"
  "09-interview-and-portfolio"
)

for module in "${modules[@]}"; do
  mkdir -p "$module/concepts"
  mkdir -p "$module/exercises"
  mkdir -p "$module/project"

  touch "$module/README.md"
  touch "$module/project/README.md"
  touch "$module/project/main.py"
  touch "$module/project/tests.py"
done

projects=(
  edith-ai
  autonomous-research-agent
  mini-coding-agent
  ai-workflow-engine
  llm-evaluation-lab
)

for project in "${projects[@]}"; do
  mkdir -p "projects/$project"
  touch "projects/$project/README.md"
  touch "projects/$project/main.py"
  touch "projects/$project/tests.py"
done

mkdir -p docs src/ai_engineering tests scripts

touch docs/roadmap.md
touch docs/learning-log.md
touch docs/engineering-decisions.md
touch src/ai_engineering/__init__.py

echo "Clean AI Engineering structure created!"
