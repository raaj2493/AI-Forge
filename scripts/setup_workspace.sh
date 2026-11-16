
#!/bin/bash

set -e

echo "Creating AI Engineering workspace..."

# --------------------------------------------------
# MODULES AND THEIR INDIVIDUAL CONCEPTS
# --------------------------------------------------

create_module() {
    local module="$1"
    shift

    mkdir -p "$module"

    cat > "$module/README.md" <<EOF
# ${module}

## Learning objectives

Understand and independently implement every concept in this module.

## Learning workflow

1. Understand
2. Implement
3. Experiment
4. Exercise
5. Test
6. Review
7. Revise

## Weekly project

See the project directory.
EOF

    for concept in "$@"; do

        local path="$module/$concept"

        mkdir -p "$path"/{implementation,exercises,tests}

        cat > "$path/README.md" <<EOF
# ${concept}

## Objective

Understand and implement this concept independently.

## Prerequisites

To be added during learning.

## Completion criteria

- Understand the concept.
- Implement it independently.
- Complete exercises.
- Test edge cases.
- Explain the execution flow.
EOF

        cat > "$path/concepts.md" <<EOF
# Concepts: ${concept}

## Problem

## Intuition

## Theory

## Architecture / Mental Model

## Important Details

## Common Mistakes

## References
EOF

        cat > "$path/notes.md" <<EOF
# Learning Notes: ${concept}

## What I learned

## What confused me

## Important takeaways

## Questions to revisit
EOF

        cat > "$path/implementation/main.py" <<EOF
"""
Independent implementation of ${concept}.
"""

def main():
    # TODO: Implement this concept.
    pass


if __name__ == "__main__":
    main()
EOF

        cat > "$path/implementation/README.md" <<EOF
# Implementation

This directory contains the independent implementation
of ${concept}.

Do not copy the reference implementation blindly.
EOF

        for i in 01 02 03; do
            cat > "$path/exercises/exercise_${i}.py" <<EOF
"""
Exercise ${i}: ${concept}

Requirements will be added when this exercise is assigned.
"""
EOF
        done

        cat > "$path/tests/test_main.py" <<EOF
"""
Tests for ${concept}.

Add meaningful tests as the implementation develops.
"""
EOF

    done
}

# --------------------------------------------------
# 00 - DEVELOPMENT ENVIRONMENT
# --------------------------------------------------

create_module "00-development-environment" \
    "01-terminal-and-shell" \
    "02-python-environment" \
    "03-uv-package-management" \
    "04-git-and-github" \
    "05-project-structure"

# --------------------------------------------------
# 01 - LLM FUNDAMENTALS
# --------------------------------------------------

create_module "01-llm-fundamentals" \
    "01-how-llms-work" \
    "02-tokens-and-tokenization" \
    "03-context-windows" \
    "04-model-parameters" \
    "05-llm-providers" \
    "06-api-requests-and-responses" \
    "07-streaming-responses" \
    "08-conversation-history" \
    "09-async-llm-calls" \
    "10-error-handling-and-retries"

# --------------------------------------------------
# 02 - PROMPT ENGINEERING
# --------------------------------------------------

create_module "02-prompt-engineering" \
    "01-prompt-structure" \
    "02-zero-shot-and-few-shot" \
    "03-system-and-user-prompts" \
    "04-prompt-templates" \
    "05-structured-outputs" \
    "06-pydantic-validation" \
    "07-prompt-chaining" \
    "08-prompt-injection"

# --------------------------------------------------
# 03 - RAG FOUNDATIONS
# --------------------------------------------------

create_module "03-rag-foundations" \
    "01-rag-architecture" \
    "02-document-loading" \
    "03-document-cleaning" \
    "04-chunking-strategies" \
    "05-embeddings" \
    "06-vector-similarity" \
    "07-vector-databases" \
    "08-retrieval" \
    "09-context-construction"

# --------------------------------------------------
# 04 - ADVANCED RAG AND EVALUATION
# --------------------------------------------------

create_module "04-advanced-rag-evaluation" \
    "01-keyword-search" \
    "02-bm25" \
    "03-hybrid-search" \
    "04-reciprocal-rank-fusion" \
    "05-reranking" \
    "06-query-rewriting" \
    "07-query-decomposition" \
    "08-rag-evaluation" \
    "09-retrieval-metrics"

# --------------------------------------------------
# 05 - AGENTS AND TOOL USE
# --------------------------------------------------

create_module "05-agents-tool-use" \
    "01-what-are-agents" \
    "02-tools-and-functions" \
    "03-tool-schemas" \
    "04-tool-execution" \
    "05-react-architecture" \
    "06-agent-execution-loop" \
    "07-action-parsing" \
    "08-agent-memory" \
    "09-agent-state" \
    "10-agent-frameworks"

# --------------------------------------------------
# 06 - MULTI AGENT AND MCP
# --------------------------------------------------

create_module "06-multi-agent-mcp" \
    "01-multi-agent-architecture" \
    "02-agent-communication" \
    "03-supervisor-pattern" \
    "04-agent-delegation" \
    "05-langgraph-workflows" \
    "06-mcp-fundamentals" \
    "07-mcp-servers" \
    "08-mcp-clients"

# --------------------------------------------------
# 07 - OBSERVABILITY AND SECURITY
# --------------------------------------------------

create_module "07-observability-security" \
    "01-llm-observability" \
    "02-tracing" \
    "03-token-and-cost-tracking" \
    "04-llm-evaluation" \
    "05-prompt-injection-defense" \
    "06-guardrails" \
    "07-pii-protection" \
    "08-semantic-caching"

# --------------------------------------------------
# 08 - DEPLOYMENT AND CAPSTONE
# --------------------------------------------------

create_module "08-deployment-capstone" \
    "01-fastapi-fundamentals" \
    "02-llm-api-development" \
    "03-streaming-api" \
    "04-database-integration" \
    "05-docker" \
    "06-environment-and-secrets" \
    "07-deployment" \
    "08-fine-tuning-fundamentals"

# --------------------------------------------------
# 09 - INTERVIEW PREPARATION
# --------------------------------------------------

create_module "09-interview-preparation" \
    "01-python-interview" \
    "02-llm-interview" \
    "03-rag-interview" \
    "04-agent-interview" \
    "05-ai-system-design"

mkdir -p "09-interview-preparation/mock-interviews"

# --------------------------------------------------
# 10 - PORTFOLIO AND JOB READINESS
# --------------------------------------------------

create_module "10-portfolio-job-readiness" \
    "01-project-documentation" \
    "02-github-profile" \
    "03-technical-writing" \
    "04-portfolio" \
    "05-job-preparation"

# --------------------------------------------------
# WEEKLY PROJECTS
# --------------------------------------------------

create_project() {
    local path="$1"
    local title="$2"

    mkdir -p "$path"/{src,tests,docs}

    cat > "$path/README.md" <<EOF
# ${title}

## Problem Statement

To be defined.

## Requirements

To be defined during implementation.

## Architecture

To be designed before coding.

## Testing

To be added.

## Deployment

To be added.
EOF

    cat > "$path/src/main.py" <<EOF
"""
${title}

Main application entry point.
"""

def main():
    # TODO: Implement the project.
    pass


if __name__ == "__main__":
    main()
EOF

    touch "$path/tests/test_main.py"
    touch "$path/docs/architecture.md"
}

create_project "01-llm-fundamentals/project" \
    "Multi Provider LLM CLI Assistant"

create_project "02-prompt-engineering/project" \
    "Structured Data Extraction Pipeline"

create_project "03-rag-foundations/project" \
    "Document Question Answering System"

create_project "04-advanced-rag-evaluation/project" \
    "Advanced RAG Search Engine"

create_project "05-agents-tool-use/project" \
    "ReAct Tool Using Agent"

create_project "06-multi-agent-mcp/project" \
    "Multi Agent Research Workflow"

create_project "07-observability-security/project" \
    "Production Ready AI Agent"

create_project "08-deployment-capstone/project" \
    "Full Stack AI Application"

create_project "09-interview-preparation/project" \
    "AI Engineering Interview Lab"

create_project "10-portfolio-job-readiness/project" \
    "AI Engineering Portfolio"

# --------------------------------------------------
# ADDITIONAL INTEGRATED PROJECTS
# --------------------------------------------------

create_project "projects/autonomous-research-agent" \
    "Autonomous Research Agent"

create_project "projects/edith-ai" \
    "Edith AI Personal Knowledge Assistant"

create_project "projects/mini-coding-agent" \
    "Mini Coding Agent"

create_project "projects/ai-workflow-engine" \
    "AI Workflow Engine"

create_project "projects/llm-evaluation-lab" \
    "LLM Evaluation Lab"

# --------------------------------------------------
# SHARED SOURCE AND DOCUMENTATION
# --------------------------------------------------

mkdir -p src/ai_engineering tests docs scripts

touch src/ai_engineering/__init__.py

touch docs/roadmap.md
touch docs/learning-log.md
touch docs/engineering-decisions.md

echo ""
echo "======================================"
echo "AI Engineering workspace created!"
echo "======================================"
