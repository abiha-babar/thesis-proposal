---

A Proposal for a Master's Thesis
To be Entitled

**BALANCING COST AND ACCURACY: A COMPARATIVE ANALYSIS OF HALLUCINATIONS IN OPEN-SOURCE VS. PROPRIETARY LARGE LANGUAGE MODELS FOR DOCUMENT SUMMARIZATION**

by

[Your Name]

To Be Submitted in Partial Fulfillment for the Degree of
MASTER OF SCIENCE IN COMPUTER SCIENCE

[Date of Proposal Here]

Approved: ______________________________ Date: ______________
(Thesis Advisor / First Reader)

Approved: ______________________________ Date: ______________
(Second Reader)

Approved: ______________________________ Date: ______________
(Director / Department Head)

---

## Overview

*(What is this whole research about — in simple words)*

AI tools that summarize documents have become very common. Hospitals, law firms, schools, and businesses all use them to quickly read through large amounts of text and get a short summary. But there is one big problem — sometimes the AI makes things up. It writes a fact in the summary that was never in the original document. This is called a "hallucination."

There are two types of AI summarization tools: expensive ones you pay for, and free ones anyone can download. Most people assume the paid ones are more trustworthy. But is that actually true? And if yes, is the extra cost worth it?

This research will test both types side by side, count how often each one makes things up, calculate exactly how much each one costs per use, and find out which one gives the best balance of accuracy and price.

---

## Background and General Goals of the Thesis

*(Why is this research needed and what will it do?)*

### Background

Imagine a lawyer who needs to read 200 long court documents every week. Instead of reading every word, she uses an AI tool to give her a quick summary of each one. This saves many hours of work.

But here is the problem: what if the AI writes "The contract was signed on March 5th" but the actual document says March 15th? Or what if it mentions a law that does not even exist? The lawyer could make a very serious mistake based on wrong information the AI invented.

This is a real and growing problem. AI tools that summarize documents sometimes include wrong facts — facts they did not get from the document, they simply generated on their own.

Right now, organizations are choosing between two options:
- **Paid AI tools** — services from large technology companies that cost money every time you use them. People assume these are more reliable.
- **Free AI tools** — open-source models that anyone can download and use at no cost. People assume these make more mistakes.

But nobody has done a proper, independent test to find out if this assumption is actually correct — especially when cost is also considered.

### What This Research Will Do (Objectives)

This thesis will do three things:

1. **Test and compare** how often paid AI tools and free AI tools make up false facts when summarizing the same documents.
2. **Calculate the exact cost** of using each tool — how much it costs to summarize every 1,000 words.
3. **Find the sweet spot** — which tool gives the best combination of being affordable and being trustworthy enough for real professional use.

### Why This Matters (Significance)

This research is important because it gives real, honest answers to a question every organization using AI for summarization needs to answer. Instead of trusting what companies claim about their own products, this research will provide independent proof. It will help developers, managers, and organizations make smarter, safer decisions about which AI tool to use — and how much they should expect to pay for reliability.

---

## Literature Review

*(What research has already been done on this topic — and what is still missing?)*

### What Others Have Already Found

Researchers have already studied this problem from different angles:

- Studies have shown that AI summarization tools do sometimes make up facts, and this has been proven through testing on large collections of news articles and documents. Researchers have even built tools specifically designed to catch these AI mistakes automatically.
- Other researchers have studied how much it costs to run large AI models, including electricity and computing expenses, and have shown that these costs are significant and growing.
- Standard collections of documents — called datasets — already exist that researchers use to fairly test and compare different AI tools. These will be used in this research too.

### What Is Still Missing

Even though a lot of research exists, nobody has combined the two questions — *how accurate is it?* and *how much does it cost?* — into one single comparison between paid and free AI tools. This research fills exactly that gap.

### Research Questions

Based on everything that has already been studied, this research will answer these three specific questions:

- **Question 1:** Do paid AI tools actually make fewer mistakes (hallucinations) than free AI tools when summarizing documents?
- **Question 2:** What is the exact cost of using each type of AI tool to summarize documents?
- **Question 3:** At what point — if at all — does the extra cost of the paid tool become worth it based on how much more accurate it actually is?

---

## Proposed Method

*(Exactly how will the experiment be done — step by step)*

### Procedure (The Steps)

1. Collect 500 to 1,000 long documents — such as news articles or academic articles — that contain verifiable facts (dates, names, numbers).
2. Send the exact same documents, with the exact same instruction, to each AI tool being tested — both the paid ones and the free ones.
3. Read the summaries each AI produces and check: did it include any fact that was NOT in the original document? If yes, that is a hallucination — it gets flagged and counted.
4. Record exactly how much each paid tool costs through its billing system, and estimate the running cost of the free tools.
5. Compare all the results in a table showing accuracy and cost side by side.

The entire process will be automated using a Python script so the test is fair, consistent, and repeatable.

### Measures (What Will Be Counted and Tracked)

- **Hallucination Rate** — Out of all the summaries made, what percentage contained at least one made-up fact? This will be the main accuracy measurement.
- **Cost Per 1,000 Words** — How much does each tool charge (or cost to run) for every 1,000 words it summarizes? This will be the main cost measurement.
- **Summary Quality (Extra)** — A standard score called ROUGE will also be checked, as extra information. But it is important to note: ROUGE only checks if words match, not if facts are correct. That is why this research is needed — to go beyond ROUGE.

### Stimuli (The Test Materials)

The test documents will be taken from existing, publicly available collections that are already used in summarization research. No special custom materials need to be created.

---

## Overall Structure of the Proposed Thesis

*(What will the final written thesis look like — chapter by chapter)*

1. **Introduction** — Explain the problem, why it matters, and what this research aims to do
2. **Literature Review** — Summarize what other researchers have already found, and explain the gap this thesis fills
3. **Methodology** — Describe in detail exactly how the experiment was designed and conducted
4. **Results** — Present the data: hallucination rates, costs, and comparison tables for each AI tool
5. **Discussion** — Explain what the results mean, what their limitations are, and what future researchers could do next
6. **Conclusion** — Summarize the most important findings in a few paragraphs
7. **References** — Full list of all sources cited
8. **Appendices** — Include the exact prompts used, sample documents, the scoring scripts, and raw data tables

---

## References

Ji, Z., Lee, N., Frieske, R., Yu, T., Su, D., Xu, Y., Ishii, E., Bang, Y., Madotto, A., & Fung, P. (2023). Survey of hallucination in natural language generation. *ACM Computing Surveys*, *55*(12), 1–38. https://doi.org/10.1145/3571730

Kryscinski, W., McCann, B., Xiong, C., & Socher, R. (2020). Evaluating the factual consistency of abstractive text summarization. In *Proceedings of the 2020 Conference on Empirical Methods in Natural Language Processing (EMNLP)* (pp. 9332–9346). Association for Computational Linguistics. https://doi.org/10.18653/v1/2020.emnlp-main.750

Maynez, J., Narayan, S., Bohnet, B., & McDonald, R. (2020). On faithfulness and factuality in abstractive summarization. In *Proceedings of the 58th Annual Meeting of the Association for Computational Linguistics (ACL)* (pp. 1906–1919). Association for Computational Linguistics. https://doi.org/10.18653/v1/2020.acl-main.173

Narayan, S., Cohen, S. B., & Lapata, M. (2018). Don't give me the details, just the summary! Topic-aware convolutional neural networks for extreme summarization. In *Proceedings of the 2018 Conference on Empirical Methods in Natural Language Processing (EMNLP)* (pp. 1797–1807). Association for Computational Linguistics. https://doi.org/10.18653/v1/D18-1206

Patterson, D., Gonzalez, J., Le, Q., Liang, C., Munguia, L., Rothchild, D., So, D., Texier, M., & Dean, J. (2021). Carbon emissions and large neural network training. *arXiv preprint arXiv:2104.10350*. https://arxiv.org/abs/2104.10350

See, A., Liu, P. J., & Manning, C. D. (2017). Get to the point: Summarization with pointer-generator networks. In *Proceedings of the 55th Annual Meeting of the Association for Computational Linguistics (ACL)* (pp. 1073–1083). Association for Computational Linguistics. https://doi.org/10.18653/v1/P17-1099

---

## Timeline

| Stage | What Happens | When |
|---|---|---|
| **Stage 1** | Read all related research papers and finish literature review | Week 4 |
| **Stage 2** | Choose and finalize the collection of test documents | Week 6 |
| **Stage 3** | Build and validate the hallucination detection method | Week 8 |
| **Stage 4** | Write the automated Python script that runs all tests | Week 10 |
| **Stage 5** | Run all experiments across all AI tools | Week 13 |
| **Stage 6** | Analyze all the data and calculate costs | Week 15 |
| **Stage 7** | Create charts and write up the results | Week 17 |
| **Stage 8** | Send first complete thesis draft to First Reader | Week 20 |
| **Stage 9** | Make corrections and improvements based on feedback | Week 21 |
| **Stage 10** | Submit the final thesis | Week 22 |

*Initial draft to be delivered to First Reader by: ___________________________*

*Final thesis to be submitted by: ___________________________*
