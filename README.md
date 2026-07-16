# 🛠️ AI-Forge

> From absolute scratch to bleeding-edge AI Architect. Deconstructing LLM mechanics, forcing type-safe Pydantic schemas, and hammering out stateful, self-correcting multi-agent graphs. Powered by ultra-fast `uv`. ⚡ No wrappers, just pure production architecture. 🔥

---

## ⚡ The Modern Foundry Stack

No bloated setups. No outdated, sluggish abstraction layers. We build exclusively using the high-performance, enterprise ecosystem:
*   **Runtime & Tooling:** `uv` (The fastest Python package manager on the planet)
*   **Inference Engines:** Groq (Ultra-low latency), OpenRouter, Anthropic, OpenAI, Local Models
*   **Data Validation:** Pydantic (Strictly typed, production-grade JSON enforcement)
*   **Orchestration:** LangGraph / LangChain (Stateful workflows & graph architectures)
*   **Vector Storage:** Qdrant / ChromaDB

---

## 📅 The End-to-End AI Engineering Roadmap

### 🏁 Phase 1: Core Mechanics & Foundations (The Zero Mark)
*   **Raw API Interfacing** | Initializing lightweight workspaces with `uv` and optimizing direct provider endpoint calls.
*   **Hyperparameter Mastery** | Tuning temperature, top_p, and system personas to enforce absolute determinism.
*   **Tokenomics & Context Management** | Analyzing tokenization patterns, tracking costs, and managing context window constraints.

### 🧩 Phase 2: Structured Outputs & System Predictability
*   **Pydantic Data Schemas** | Forcing chaotic, unstructured LLM text outputs into predictable, type-safe Python objects.
*   **Self-Healing JSON Extraction** | Building validation loops that feed syntax errors back to the LLM to auto-correct its own output for database ingestion.
*   **Structured Routing** | Steering backend application logic dynamically using cleanly parsed, valid JSON data.

### 📚 Phase 3: Memory & Production-Grade RAG
*   **Stateful Chat Histories** | Implementing sliding context windows and token-aware conversation summarization.
*   **Vector Lifecycles & Search** | Smart document chunking (semantic vs. token), embedding generation, and high-speed vector queries.
*   **Precision Retrieval & Reranking** | Blending classic keyword search (BM25) with deep vector search and cross-encoder rerankers to kill hallucinations.

### 🤖 Phase 4: Autonomous State Machines & Swarms
*   **Native Tool Execution** | Giving models hands. Teaching LLMs to securely execute custom Python scripts and hit live APIs.
*   **Stateful Multi-Agent Graphs** | Using LangGraph to build complex, looping network chains (e.g., Writer -> Critic -> Publisher).
*   **Human-in-the-Loop Validation** | Engineering systemic breakpoints where an agent pauses, requests manual human approval via UI, and receives feedback.

---

## 🚀 Standalone Production Repositories

*As architectures inside this forge mature, they are extracted into dedicated production repos to keep the sandbox separate from deployment:*

1. 📂 **`ats-core`** (Coming Soon) - Ultra-fast automated resume parsing engine using Pydantic structured schemas.
2. 📂 **`rag-flow`** (Coming Soon) - An enterprise-grade intelligent search assistant capable of deep-diving massive datasets.
3. 📂 **`agent-x`** (Coming Soon) - A fully autonomous multi-agent corporate workflow engine hosted live with memory persistence.

---

## 🔨 Setup & Run

Built cleanly and initialized using `uv`.

```bash
# Clone the forge
git clone [https://github.com/YOUR_USERNAME/ai-forge.git](https://github.com/YOUR_USERNAME/ai-forge.git)
cd ai-forge

# Install and sync dependencies instantly
uv sync

# Fire up the engine (Run whichever script you are working on)
uv run core_mechanics/first_call.py
