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

Artificial intelligence language models are increasingly used to automatically summarize large volumes of documents across industries such as law, healthcare, finance, and education. A fundamental and growing concern with this practice is the phenomenon known as "hallucination" — the tendency of AI models to generate summaries containing facts, figures, or claims that do not exist in the original source material. Organizations adopting these tools face a key decision: should they pay for premium, proprietary AI services assumed to be more reliable, or use free, open-source alternatives to reduce costs?

This proposal outlines a research project that will systematically measure and compare hallucination rates between open-source and proprietary large language models (LLMs) during document summarization, alongside their respective financial costs per unit of work. The study will use a controlled experimental design applied to a standardized document dataset, with a clearly defined hallucination detection methodology. The ultimate goal is to determine which category of model provides the optimal trade-off between factual accuracy and operational cost for real-world enterprise use, producing a data-driven benchmark that researchers and practitioners can apply directly.

---

## Background and General Goals of the Thesis

### Background

Large Language Models (LLMs) have reached a level of capability where they are now deployed in enterprise environments to process real documents at scale. One of the most common applications is automatic summarization — condensing long reports, contracts, research papers, or news articles into brief, actionable summaries. This saves significant time and labor costs for organizations that handle large volumes of written material.

However, a persistent and serious problem undermines trust in this technology: LLMs hallucinate. Rather than simply extracting or paraphrasing content from the source, they sometimes generate new content — inventing specific facts, dates, names, or statistics — and present it as part of a faithful summary. In domains such as law or medicine, a hallucinated fact embedded in a summary can have directly harmful consequences.

Organizations are currently choosing between two categories of AI models for such tasks. Proprietary models, offered by large technology companies on a subscription or pay-per-use basis, are generally assumed to be more reliable. Open-source models, which can be downloaded and used freely, have rapidly improved in capability but are often perceived as less trustworthy. This assumption is widely held but poorly supported by rigorous, independent empirical evidence — particularly when cost is factored into the evaluation.

### Statement of Objectives

This thesis has three primary objectives:

1. To empirically measure and compare hallucination rates between open-source and proprietary LLMs using a controlled, reproducible experimental methodology applied to a standardized dataset of documents.
2. To calculate the precise financial cost per 1,000 words summarized for each model tested, accounting for API pricing in proprietary models and compute costs in open-source models.
3. To produce a combined cost-accuracy benchmark that identifies the model or model category offering the best trade-off between factual reliability and financial cost for enterprise-scale document summarization.

### Significance of the Project

The findings of this thesis will have direct practical value for any organization deploying AI for document summarization. As AI adoption scales, the question of which model to trust — and at what price — becomes a genuine operational and ethical concern. By producing an independent, vendor-neutral benchmark, this research will equip developers, IT managers, and decision-makers with the data they need to make responsible choices. The work also contributes to the growing academic discourse on LLM reliability, trustworthiness, and the economics of AI deployment — areas of increasing importance as these systems move from research settings into production environments.

---

## Literature Review

### Review of Existing Literature

Research on AI-generated hallucinations has expanded considerably in recent years. Maynez et al. (2020) demonstrated that abstractive summarization models frequently generate content unfaithful to the source, establishing faithfulness as a distinct and measurable property separate from quality. Kryscinski et al. (2020) proposed FactCC, a model-based approach to automatically evaluate the factual consistency of generated summaries, providing a foundation for scalable hallucination detection. Ji et al. (2023) conducted a comprehensive survey of hallucination across natural language generation tasks, categorizing hallucination types and reviewing evaluation methods — establishing a theoretical framework this thesis will draw from directly.

On the economic side, Patterson et al. (2021) examined the computational and financial costs of training and running large AI models, introducing cost-efficiency as a legitimate dimension of model evaluation. Work on open-source model benchmarking, including comparative evaluations on standard datasets such as CNN/DailyMail and XSum (See et al., 2017; Narayan et al., 2018), provides the methodological foundation for the controlled comparisons proposed here.

Despite this body of work, no existing study directly combines hallucination measurement with cost-per-unit analysis in a single comparative framework across both open-source and proprietary model categories. This thesis fills that specific gap.

### Research Questions

Derived from the above review of literature, this thesis will address the following research questions:

- **RQ1:** Do proprietary large language models produce significantly lower hallucination rates than open-source large language models when summarizing documents of equivalent complexity?
- **RQ2:** What is the financial cost per 1,000 words summarized for proprietary vs. open-source LLMs, accounting for all relevant cost factors?
- **RQ3:** At what level of hallucination rate difference, if any, does the cost premium of proprietary models become economically justifiable for enterprise use?

---

## Proposed Method

### Procedure

A standardized dataset of 500 to 1,000 long-form documents will be compiled from publicly available sources, including news articles and academic abstracts with verifiable, factual content. Each document will be submitted to each model under evaluation using a single, fixed prompt. All models will receive identical inputs under identical conditions. The generated summaries will then be evaluated for hallucinations using a defined detection protocol. Costs will be recorded simultaneously through API billing dashboards for proprietary models and estimated electricity and compute metrics for open-source models. The full pipeline will be implemented as an automated Python script to ensure reproducibility.

### Measures

The primary variables measured in this study are:

- **Hallucination Rate:** The percentage of generated summaries containing at least one hallucinated claim — defined as any specific fact, name, number, or date present in the summary that cannot be found in the original source document. This will be measured using a combination of automated fact-checking and manual verification of a randomly sampled subset.
- **Cost Per 1,000 Words:** For proprietary models, extracted directly from API billing records. For open-source models, calculated using measured electricity consumption and a hardware depreciation estimate. All figures will be normalized to a cost-per-1,000-word-input basis.
- **Summary Quality (secondary):** ROUGE scores will be recorded as a secondary, supplementary metric to situate the findings within the existing summarization literature — though it is explicitly noted that ROUGE measures word overlap and not factual accuracy.

### Stimuli

No custom stimuli are required for this study. All input documents will be drawn from existing, publicly available text corpora used in prior summarization research. If necessary, a curated subset will be selected based on document length and factual density to ensure consistency across test conditions.

---

## Overall Structure of the Proposed Thesis

The completed thesis will follow a standard empirical research structure, organized as follows:

1. **Introduction** — Background context, problem statement, research motivation, and overview of the study
2. **Literature Review** — Comprehensive review of related work on LLM hallucinations, summarization evaluation, and AI cost analysis; formal statement of research questions
3. **Methodology** — Detailed description of the experimental design, dataset, models, prompt design, evaluation procedure, and cost calculation methods
4. **Results** — Presentation of hallucination rates, cost figures, and benchmarking data across all models tested
5. **Discussion** — Interpretation of findings, implications for enterprise AI adoption, limitations of the study, and directions for future research
6. **Conclusion** — Summary of contributions and key takeaways
7. **References** — Complete APA-formatted bibliography
8. **Appendices** — Prompt templates, dataset sample, scoring scripts, and raw data tables

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

| Stage | Description | Target Completion |
|---|---|---|
| **Stage 1** | Full literature review completed | Week 4 |
| **Stage 2** | Dataset compiled and finalized | Week 6 |
| **Stage 3** | Hallucination detection methodology validated | Week 8 |
| **Stage 4** | Experimental pipeline developed and tested | Week 10 |
| **Stage 5** | All model experiments executed | Week 13 |
| **Stage 6** | Data analysis and cost calculation completed | Week 15 |
| **Stage 7** | Results write-up and visualizations | Week 17 |
| **Stage 8** | Full thesis draft submitted to First Reader | Week 20 |
| **Stage 9** | Revisions incorporated | Week 21 |
| **Stage 10** | Final thesis submitted | Week 22 |

*Initial draft of thesis to be delivered to First Reader: ___________________________*

*Final copies delivered to library / department: ___________________________*
