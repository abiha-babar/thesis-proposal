# Thesis Proposal

**Student:** [Your Name]
**Program:** MS Computer Science
**Date:** March 2026

---

## Title
Cost-Benefit Analysis of Local Small Language Models vs. Cloud-Based AI for Automated Data Extraction

---

## What I Want to Research

Right now, most organizations use cloud-based AI services to automatically extract information from documents like invoices, forms, and records. These services charge per use, which adds up quickly at scale, and also require sending potentially sensitive data to third-party servers.

A newer class of smaller AI models can now run entirely on a standard laptop — offline, for free. My research will investigate whether these local models are accurate and fast enough to realistically replace cloud AI for data extraction tasks, and at exactly what point they become the cheaper option.

---

## Core Research Questions

1. How does the **accuracy** of a locally-run AI model compare to a cloud-based AI model when extracting data from documents?
2. How does **processing speed** differ between the two approaches?
3. At what **volume of daily documents** does running a local AI become cheaper than paying for cloud API access?

---

## How I Will Do It

- Prepare a dataset of ~500 documents (e.g., invoices or forms) with a known correct answer for each field
- Run both a local AI model and a cloud AI model on the same documents using the same instructions
- Record accuracy, processing time, and cost for each
- Calculate the financial **breakeven point** — the exact document volume at which local hosting saves money

---

## Expected Outcome

A clear, data-driven comparison showing when and why a local AI model is a practical and economical alternative to cloud-based AI — useful for businesses, developers, and IT decision-makers.

---

## Resources Needed

- A consumer laptop (8–16GB RAM)
- Python for scripting and automation
- A small budget (~$10–30) for cloud API testing
