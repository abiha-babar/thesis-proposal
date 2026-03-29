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

Organizations across sectors such as finance, healthcare, education, and administration increasingly rely on artificial intelligence to automatically extract structured information from large volumes of unstructured documents — including invoices, registration forms, contracts, and records. The dominant approach is to send these documents to cloud-based AI services, which charge on a per-use basis. While this is convenient, it introduces two significant concerns at scale: rapidly compounding operational costs and data privacy risks, since sensitive documents must leave the organization's control.

Recent advances in AI model compression have made it possible to run capable language models entirely on standard consumer hardware — at zero ongoing cost and with full data privacy. However, organizations lack concrete, evidence-based guidance on whether these locally-hosted models are accurate and fast enough for real workloads, and at what usage volume their economics become favorable compared to cloud services.

This proposal outlines a research project that will systematically compare local Small Language Models (SLMs) against cloud-based Large Language Models (LLMs) across three dimensions: data extraction accuracy, processing latency, and total financial cost. The study will apply a controlled experimental methodology to a standardized document dataset, producing a clear breakeven analysis and a practical decision framework for organizations considering local AI deployment.

---

## Background and General Goals of the Thesis

### Background

Automated data extraction — the process of using AI to identify and pull specific fields from unstructured documents — has become a high-value use case for language models. A scanned invoice, for example, might contain dozens of relevant data points such as vendor name, total amount, tax, and due date. Manually entering this information is labor-intensive and error-prone; AI can automate it at scale.

Currently, most organizations rely on cloud-based AI APIs for this task. These services offer strong accuracy and fast response times but bill the organization each time a document is processed. For small volumes, this cost is negligible. At scale — processing thousands of documents daily — it becomes a significant and ongoing operational expense. Additionally, depending on the nature of the documents (patient records, financial statements, personnel files), sending data to a third-party server may violate internal data governance policies or applicable privacy regulations.

A parallel trend has emerged: the development of Small Language Models (SLMs) that can be downloaded and run on local hardware. Advances in model quantization — the process of compressing large models without significant loss of capability — mean that models which previously required large data center infrastructure can now run on a standard laptop. This raises a practical and economically important question: are these local models good enough, and at what point do they represent the smarter financial choice?

### Statement of Objectives

This thesis has three primary objectives:

1. To empirically measure and compare data extraction accuracy between locally-hosted small language models and cloud-based large language models when applied to a standardized dataset of unstructured documents under identical conditions.
2. To measure and compare processing latency between both approaches — specifically, the average time from document submission to structured output receipt.
3. To calculate the financial breakeven point: the daily document processing volume at which the total cost of local deployment (hardware depreciation plus electricity) becomes lower than the total cost of equivalent cloud API usage.

### Significance of the Project

This research addresses a decision that is actively being faced by developers, IT managers, and organizational leaders across industries in 2026. As data privacy regulations tighten globally and AI API costs scale with organizational growth, the question of when and whether to host AI locally is becoming increasingly urgent. By producing a rigorous, quantitative benchmark alongside a practical financial model, this thesis equips decision-makers with the evidence they need to make informed, responsible infrastructure choices — rather than relying on vendor marketing or anecdotal experience. The work also contributes to the academic literature on AI deployment economics and edge inference, areas that remain underexplored relative to their practical importance.

---

## Literature Review

### Review of Existing Literature

Research on document information extraction has established robust datasets and evaluation frameworks. Jaume et al. (2019) introduced FUNSD, a dataset for form understanding in noisy scanned documents, which demonstrated the complexity of extracting structured data from real-world administrative forms and established exact-match accuracy as the appropriate evaluation metric for this task. Park et al. (2019) extended this work with CORD, a receipt understanding dataset, further validating the challenge of extraction from semi-structured documents.

On the model compression side, Dettmers et al. (2022) demonstrated that large language models can be quantized to 8-bit integer precision with minimal accuracy loss, making local deployment on consumer hardware practically viable for the first time. Frantar et al. (2022) further advanced post-training quantization techniques, reducing the memory footprint of large models sufficiently to run on standard laptops. These developments are central to the feasibility argument underlying this thesis.

Regarding cost analysis, Strubell et al. (2019) raised the issue of energy and financial costs in NLP model deployment, establishing a methodology for measuring compute costs that this thesis will adapt for the local vs. cloud comparison. However, no existing study has brought these threads together — extraction accuracy, latency, and total cost — into a single unified comparison framework for the specific task of automated data extraction. This thesis addresses that gap directly.

### Research Questions

Derived from the review of literature above, this thesis will address the following research questions:

- **RQ1:** Is there a statistically significant difference in data extraction accuracy between locally-hosted small language models and cloud-based large language models when processing standardized unstructured documents?
- **RQ2:** What is the difference in average processing latency between local SLM inference and cloud LLM API response time for equivalent data extraction tasks?
- **RQ3:** At what daily document processing volume does the total cost of local AI deployment become lower than the total cost of equivalent cloud API usage, given defined hardware and electricity cost assumptions?

---

## Proposed Method

### Procedure

A dataset of 500 documents will be prepared, consisting of simulated invoices and administrative forms with multiple extractable fields per document. A verified ground-truth answer key will be created for every field in every document prior to the experiment. Each document will be submitted to each model under evaluation using a single, standardized extraction prompt that requests output in structured JSON format (e.g., `{"vendor": "ABC Ltd", "total": "$500.00", "date": "2026-01-15"}`). The automated Python pipeline will record the AI output, compare it against the ground-truth answer key, log the extracted values, and measure the elapsed time for each document. Cloud model costs will be recorded from API billing dashboards. Local model electricity costs will be measured using a power monitoring tool. All experiments will be run on the same hardware under the same conditions to ensure comparability.

### Measures

The primary variables measured in this study are:

- **Extraction Accuracy:** An exact-match score per field — the extracted value either matches the ground truth exactly (1) or it does not (0). Overall accuracy is reported as the percentage of correctly extracted fields across all documents and all models.
- **Processing Latency:** The elapsed time in milliseconds from the moment a document is submitted to the moment a complete structured output is received. Averaged across all 500 documents per model.
- **Cost Per Document:** For cloud models, extracted from API billing records and normalized per document. For local models, calculated as the electricity consumed per document (measured in kilowatt-hours) multiplied by the local electricity tariff, plus a per-document share of hardware depreciation computed over a standard 3-year hardware lifecycle.
- **Breakeven Volume:** Derived from the cost-per-document figures for each approach, calculated as the daily document volume at which cumulative local costs equal cumulative cloud API costs over a 12-month period.

### Stimuli

No external or custom experimental stimuli are required. All documents used in this study will be synthetically generated using a templated approach based on real-world invoice and form structures, ensuring a diverse range of layouts, formatting styles, and field values while maintaining a complete and verifiable ground-truth answer key. This approach avoids reliance on proprietary or sensitive real-world documents and ensures full control over dataset composition.

---

## Overall Structure of the Proposed Thesis

The completed thesis will follow a standard empirical research structure, organized as follows:

1. **Introduction** — Background context, problem statement, research motivation, and overview of the study
2. **Literature Review** — Comprehensive review of related work on document information extraction, AI model compression, edge inference, and AI deployment cost analysis; formal statement of research questions
3. **Methodology** — Detailed description of the experimental design, dataset preparation, model selection and configuration, prompt design, evaluation metrics, and financial cost model
4. **Results** — Presentation of accuracy scores, latency measurements, cost figures, and the breakeven analysis with supporting visualizations
5. **Discussion** — Interpretation of findings, practical implications for organizational AI adoption, limitations of the study, and future research directions
6. **Conclusion** — Summary of contributions and key takeaways for practitioners and researchers
7. **References** — Complete APA-formatted bibliography
8. **Appendices** — Prompt templates, sample dataset documents, ground-truth answer key structure, scoring scripts, raw results tables, and electricity measurement methodology

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

| Stage | Description | Target Completion |
|---|---|---|
| **Stage 1** | Full literature review completed | Week 4 |
| **Stage 2** | Synthetic dataset of 500 documents generated with ground-truth labels | Week 6 |
| **Stage 3** | Local model environment configured and tested | Week 8 |
| **Stage 4** | Cloud API integration and billing tracking set up | Week 9 |
| **Stage 5** | All extraction experiments executed across all models | Week 13 |
| **Stage 6** | Accuracy scoring and latency analysis completed | Week 15 |
| **Stage 7** | Financial cost model and breakeven analysis completed | Week 16 |
| **Stage 8** | Results write-up, visualizations, and figures | Week 18 |
| **Stage 9** | Full thesis draft submitted to First Reader | Week 20 |
| **Stage 10** | Revisions incorporated and final thesis submitted | Week 22 |

*Initial draft of thesis to be delivered to First Reader: ___________________________*

*Final copies delivered to library / department: ___________________________*
