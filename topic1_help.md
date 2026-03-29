# Help Guide — Topic 1: Hallucinations in Summarization

> **Read this tonight. This will prepare you for every question a teacher might ask tomorrow.**

---

## First — Understand Your Topic in Simple Words

Imagine you have a 10-page news article. You ask an AI to summarize it in 3 bullet points. The AI comes back with a summary — but one of those bullet points mentions a statistic that was never in the original article. The AI made it up. That is called a **hallucination**.

Now imagine you are a hospital, a law firm, or a university using AI to summarize important documents every day. A single made-up fact could cause serious problems.

Your research asks: **do expensive, paid AI models hallucinate less than free, open-source ones? And by how much?** Is paying the premium price actually worth it?

That's it. You're putting a price tag on trustworthiness.

---

## What to Say When You Walk In

When a teacher asks *"What is your research about?"* — say this:

> *"I'm researching how often AI models generate false or fabricated information when summarizing documents — what we call hallucinations. I want to compare free, open-source models against expensive, paid cloud models to measure the exact difference in accuracy, and calculate whether paying the higher price is financially justified for businesses that need reliable summaries."*

Short. Clear. Confident.

---

## Questions Teachers Will Ask — And How to Answer Them

### ❓ "What exactly is a hallucination in AI?"
**Say:** *"A hallucination is when the AI includes a specific fact, number, name, or claim in its output that does not exist anywhere in the original source document. The AI essentially invented it."*

---

### ❓ "How will you detect hallucinations?"
**Say:** *"I'll compare each AI-generated summary against the original document. If the summary contains any specific claim — a number, a name, a date — that cannot be found in the source text, I flag it as a hallucination. I'll also use an automated evaluation approach to scale this across hundreds of documents."*

---

### ❓ "Why does this matter?"
**Say:** *"In high-stakes fields like law, medicine, and finance, a hallucinated fact in a summary can lead to real harm — wrong medical advice, incorrect legal interpretation, or bad business decisions. Knowing which AI model is more reliable — and what that reliability costs — is genuinely valuable for organizations adopting AI."*

---

### ❓ "How will you measure cost?"
**Say:** *"For paid models, the cost is directly visible on the API billing dashboard — they charge per token or per word processed. I'll calculate the exact cost per 1,000 words summarized for each model. Open-source models have no API cost but may have compute costs, which I will also account for."*

---

### ❓ "Did you use the same prompt for every model?"
**Say:** *"Yes — that's a key part of keeping the experiment fair. Every model received the exact same standardized prompt and the exact same document. The only variable is the model itself."*

---

### ❓ "Why compare open-source and proprietary?"
**Say:** *"Because this is the real decision organizations face. Do you pay for a premium AI subscription, or do you use a free, open-source alternative? My research gives them a data-driven answer instead of guesswork."*

---

### ❓ "What dataset will you use?"
**Say:** *"I plan to use publicly available datasets of long-form articles or documents — such as news articles or academic abstracts — which are already used in summarization research. These give me a consistent, well-understood source of test material."*

---

### ❓ "Is this MS-level work?"
**Say:** *"Yes — it involves designing a controlled experiment across multiple AI systems, developing a rigorous evaluation methodology for hallucination detection, collecting and analyzing quantitative data, and producing a benchmark with findings that contribute to the field of NLP evaluation and AI reliability."*

---

### ❓ "What if both models hallucinate equally?"
**Say:** *"That itself would be a significant finding — it would suggest that paying a premium price offers no reliability advantage, which challenges a widely held assumption in the industry. Either way, the result is meaningful."*

---

### ❓ "Have you read any related research?"
**Say:** *"I'm currently reviewing literature on hallucination evaluation in NLP, existing summarization benchmarks, and LLM cost analysis frameworks. My formal literature review will be completed in the first phase of the thesis."*

---

## Key Terms to Know (In Case They Come Up)

| Term | What It Means (Simply) |
|---|---|
| **Hallucination** | When AI generates facts that don't exist in the source document |
| **Summarization** | Asking AI to condense a long document into a shorter version |
| **Open-source model** | A free AI model that anyone can download and use |
| **Proprietary model** | A paid AI model owned by a company, accessed via subscription |
| **Hallucination Rate** | The percentage of summaries that contain at least one hallucination |
| **Token** | A unit of text that AI processes — roughly ¾ of a word |
| **Prompt** | The instruction you give the AI (e.g., "Summarize this in 3 bullet points") |
| **Benchmark** | A standardized test used to compare multiple systems fairly |
| **Faithfulness** | Whether the AI's output stays true to the original source |
| **ROUGE Score** | A common metric for measuring summarization quality (word overlap) |

---

## What Makes This a Strong Thesis (Say This If Asked)

1. **It's measurable** — hallucination rate is a clear percentage, cost is a clear number
2. **It challenges a common assumption** — that paying more always means better quality
3. **It's highly practical** — any organization using AI for document processing needs this answer
4. **It's timely** — AI reliability and trust is one of the biggest concerns in 2026
5. **It produces a decision tool** — organizations can use your benchmark to make smarter purchasing decisions

---

*Good luck tomorrow — you've got this! 💪*
