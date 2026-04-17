---

A Proposal for a Master's Thesis
To be Entitled

**COST-BENEFIT ANALYSIS AND PERFORMANCE EVALUATION OF LOCAL SMALL LANGUAGE MODELS VS. CLOUD-BASED LARGE LANGUAGE MODELS FOR AUTOMATED DATA EXTRACTION**

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

Many businesses and organizations today need to read through large numbers of documents every day — like invoices, registration forms, or official records — and pull out specific pieces of information from them. For example: "What is the total amount on this invoice?" or "What is the applicant's name on this form?"

Doing this by hand is slow and expensive. So many organizations now use AI to do it automatically. Most of them send their documents to an online AI service and pay a small fee each time. This works — but if you have thousands of documents every day, those fees add up fast. And there's another problem: your private documents have to leave your office and go to someone else's server.

A new option now exists: smaller AI tools that you can download and run directly on a regular laptop — for free, with all data staying private. But are they accurate enough? Are they fast enough?

This research will test both options side by side, measure how accurate each one is, how fast each one is, and calculate exactly when the free local option becomes cheaper than the paid online one.

---

## Background and General Goals of the Thesis

*(Why is this research needed and what will it do?)*

### Background

Think about a school that receives 500 student registration forms every semester. Each form has a student's name, ID number, address, and fee total. Someone needs to take that information and enter it into the school's system. Doing it manually for 500 forms takes days. An AI can do it in minutes.

Right now, most schools or businesses would use a paid online AI service to do this. They upload the forms to the internet, the AI reads them, and sends back the extracted information. It works well — but every upload costs a small fee. For 500 forms a day, every day, those fees grow into a serious monthly expense. Worse, if those forms contain sensitive student data, uploading them to a third-party online service could be a privacy risk.

Here is the new opportunity: there are now smaller AI models that can be downloaded directly onto a laptop. No internet needed. No fees. No data leaving the building. But does it work as well as the paid online service? Is it fast enough to be useful?

Right now, nobody has done a proper, honest comparison between these two options for this specific task — with real numbers on accuracy, speed, and cost all in one place. That is exactly what this thesis will do.

### What This Research Will Do (Objectives)

This thesis will do three things:

1. **Test and compare accuracy** — How correctly does each AI option extract the right information from the same documents?
2. **Test and compare speed** — How long does each option take to process one document?
3. **Calculate the breakeven point** — At what number of documents per day does the free local option become cheaper than paying for the online service?

### Why This Matters (Significance)

This research solves a real problem that businesses, schools, hospitals, and government offices are facing right now. API costs are growing. Privacy laws are getting stricter. And local AI tools are getting better. But decision-makers don't have solid, independent numbers to rely on when choosing which option to use.

This thesis gives them those numbers — a clear, honest benchmark they can actually apply to their own situation to make a smarter, more cost-effective decision.

---

## Literature Review

*(What research has already been done on this topic — and what is still missing?)*

### What Others Have Already Found

Researchers have already studied several related areas:

- Studies have shown that AI can successfully read and extract data from messy, unstructured documents like scanned forms and receipts — but accuracy varies significantly depending on the model and the complexity of the document.
- Other researchers have shown that large AI models can be "compressed" — made smaller and lighter — without losing much of their ability. This is what makes it possible to run them on a regular laptop instead of a powerful server.
- Researchers have also studied the cost and energy consumption of running AI models, and have shown these costs can be calculated and compared in a structured way.

### What Is Still Missing

All of these areas have been studied separately. But nobody has combined accuracy, speed, and cost into a single, practical comparison for data extraction tasks specifically. This thesis does exactly that — and produces a financial breakeven model that organizations can directly use.

### Research Questions

Based on everything already studied, this research will answer these three specific questions:

- **Question 1:** Is there a real, meaningful difference in accuracy between a local small AI tool and a paid online AI service when extracting data from documents?
- **Question 2:** How much faster or slower is the local option compared to the paid online option?
- **Question 3:** At what number of daily documents does it become cheaper to use the free local AI tool instead of paying for the online service?

---

## Proposed Method

*(Exactly how will the experiment be done — step by step)*

### Procedure (The Steps)

1. Create a set of 500 test documents — such as fake invoices or forms — where every answer is already known in advance (for example: *Total = $500, Name = Ahmed Ali, Date = 15 March 2026*). This is called the "answer key."
2. Give these exact same documents, with the exact same instruction, to both the local AI tool and the paid online AI service.
3. Check what each AI extracted and compare it to the answer key. Did it get the right total? The right name? The right date?
4. Time how long each AI takes to process each document.
5. Record the exact cost from the online billing system for the paid service, and calculate the cost of electricity and laptop usage for the local option.
6. Put all results into a comparison table and calculate the breakeven point.

Everything will be run automatically using a Python script so the test is fair and consistent.

### Measures (What Will Be Counted and Tracked)

- **Accuracy** — For each piece of information the AI needed to extract, did it get exactly the right answer? If yes it scores a 1. If no it scores a 0. The overall accuracy is reported as a percentage.
- **Speed (Latency)** — How many milliseconds (or seconds) did each AI take per document, on average?
- **Cost Per Document** — How much does it cost to process one document with the paid online service? And how much does it cost with the local option (electricity + a share of the laptop's purchase price)?
- **Breakeven Point** — At what daily volume of documents do the two costs become equal? Beyond that point, the local option is cheaper.

### Stimuli (The Test Materials)

All 500 test documents will be created artificially — designed to look like real invoices and forms, but using made-up data so there are no privacy issues. This gives full control over the content and ensures a complete, accurate answer key for every single document.

---

## Overall Structure of the Proposed Thesis

*(What will the final written thesis look like — chapter by chapter)*

1. **Introduction** — Explain the problem, why it matters, and what this research aims to do
2. **Literature Review** — Summarize what other researchers have already found, and explain the gap this thesis fills
3. **Methodology** — Describe in detail exactly how the experiment was designed and conducted
4. **Results** — Present the data: accuracy scores, speed measurements, cost tables, and the breakeven chart
5. **Discussion** — Explain what the results mean, what their limitations are, and what future researchers could do next
6. **Conclusion** — Summarize the most important findings clearly and simply
7. **References** — Full list of all sources cited
8. **Appendices** — Include the exact prompts used, sample document formats, the ground-truth answer key structure, scoring scripts, and raw results

---

## References

Dettmers, T., Lewis, M., Belkada, Y., & Zettlemoyer, L. (2022). LLM.int8(): 8-bit matrix multiplication for transformers at scale. In *Advances in Neural Information Processing Systems (NeurIPS)* (Vol. 35, pp. 30318–30332). https://proceedings.neurips.cc/paper_files/paper/2022/hash/c3ba4962c05c49636d4c6206a97e9c8a-Abstract-Conference.html

Frantar, E., Ashkboos, S., Hoefler, T., & Alistarh, D. (2022). *GPTQ: Accurate post-training quantization for generative pre-trained transformers*. arXiv preprint arXiv:2210.17323. https://arxiv.org/abs/2210.17323

Jaume, G., Ekenel, H. K., & Thiran, J.-P. (2019). FUNSD: A dataset for form understanding in noisy scanned documents. In *Proceedings of the 2019 International Conference on Document Analysis and Recognition Workshops (ICDARW)* (pp. 1–6). IEEE. https://doi.org/10.1109/ICDARW.2019.10029

Park, S., Shin, S., Lee, B., Lee, J., Surh, J., Seo, M., & Lee, H. (2019). *CORD: A consolidated receipt dataset for post-OCR parsing*. In *Workshop on Document Intelligence at NeurIPS 2019*. https://arxiv.org/abs/2103.10213

Strubell, E., Ganesh, A., & McCallum, A. (2019). Energy and policy considerations for deep learning in NLP. In *Proceedings of the 57th Annual Meeting of the Association for Computational Linguistics (ACL)* (pp. 3645–3650). Association for Computational Linguistics. https://doi.org/10.18653/v1/P19-1355

Wei, J., Tay, Y., Bommasani, R., Raffel, C., Zoph, B., Borgeaud, S., Yogatama, D., Bosma, M., Zhou, D., Metzler, D., Chi, E. H., Hashimoto, T., Vinyals, O., Liang, P., Dean, J., & Fedus, W. (2022). Emergent abilities of large language models. *Transactions on Machine Learning Research*. https://openreview.net/forum?id=yzkSU5zdwD

---

## Timeline

| Stage | What Happens | When |
|---|---|---|
| **Stage 1** | Read all related research papers and finish the literature review | Week 4 |
| **Stage 2** | Create the 500 test documents with a complete answer key | Week 6 |
| **Stage 3** | Set up and test the local AI tool on the laptop | Week 8 |
| **Stage 4** | Set up and test the connection to the paid online AI service | Week 9 |
| **Stage 5** | Run all extraction experiments on all 500 documents for both options | Week 13 |
| **Stage 6** | Score accuracy and measure speed for all results | Week 15 |
| **Stage 7** | Calculate costs and work out the breakeven point | Week 16 |
| **Stage 8** | Create charts, write up all results | Week 18 |
| **Stage 9** | Send first complete thesis draft to First Reader | Week 20 |
| **Stage 10** | Make corrections and submit the final thesis | Week 22 |

*Initial draft to be delivered to First Reader by: ___________________________*

*Final thesis to be submitted by: ___________________________*
