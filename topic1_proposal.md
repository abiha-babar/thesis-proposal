# Thesis Proposal

**Student:** [Your Name]
**Program:** MS Computer Science
**Date:** March 2026

---

## Title
Balancing Cost and Accuracy: A Comparative Analysis of Hallucinations in Open-Source vs. Proprietary Large Language Models for Document Summarization

---

## What I Want to Research

AI language models are increasingly used to automatically summarize large documents — such as research papers, legal contracts, news articles, and reports. However, these models sometimes "hallucinate" — meaning they generate summaries that contain facts, names, or numbers that were never in the original document.

There are two categories of AI models available: expensive, proprietary cloud-based models, and free, open-source models. The common assumption is that paid models are more trustworthy. My research will test whether this assumption holds up under rigorous measurement — and calculate the exact financial cost of that accuracy difference.

---

## Core Research Questions

1. How do **open-source AI models** compare to **proprietary (paid) AI models** in terms of hallucination rate when summarizing documents?
2. What is the **exact cost per 1,000 words** summarized for each model?
3. Which model offers the best **trade-off between financial cost and factual accuracy** for real-world enterprise use?

---

## How I Will Do It

- Collect a dataset of ~500–1,000 long-form documents (e.g., news articles, academic abstracts, or business reports)
- Send each document to both open-source and proprietary AI models with the same standardized prompt
- Evaluate the generated summaries for hallucinations — any fact, number, or name in the summary that does not exist in the original document
- Record the API costs from billing dashboards for paid models; open-source models are free
- Calculate hallucination rate (%) and cost per 1,000 words for every model tested
- Produce a comparison table identifying the optimal model for enterprise use

---

## Expected Outcome

A clear, data-driven benchmark showing exactly how much factual reliability costs — helping businesses and developers decide which AI model to trust for document summarization based on their budget and accuracy requirements.

---

## Resources Needed

- Access to cloud AI APIs (estimated cost: $10–$30 for experiments)
- A computer to run open-source models (or free cloud compute)
- Python for scripting and automation
- A standardized summarization dataset (publicly available)
