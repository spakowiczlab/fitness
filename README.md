<img src="figures/hex-sticker.png" align="right" width="180" alt="FITNESS hex sticker: an outline of a person walking on a rising path, with microbe shapes, labeled FITNESS.">

# fitness [![DOI](https://zenodo.org/badge/234970332.svg)](https://zenodo.org/doi/10.5281/zenodo.11200745)

Code and derived results for the FITNESS study, a prospective cohort of older adults with non-small-cell lung cancer. The study tested whether a longitudinal comprehensive geriatric assessment, treatment-toxicity capture, and stool and blood collection were feasible, and how those measures tracked with functional status.

## Citation

Grogan M, Hoyd R, Benedict J, Janse S, Williams N, Naughton M, Burd CE, Paskett ED, Rosko A, Spakowicz DJ, Presley CJ. The FITNESS study: longitudinal geriatric assessment, treatment toxicity, and biospecimen collection to assess functional disability among older adults with lung cancer. *Frontiers in Aging*. 2024;5:1268232. doi:[10.3389/fragi.2024.1268232](https://doi.org/10.3389/fragi.2024.1268232). PMID: [38911592](https://pubmed.ncbi.nlm.nih.gov/38911592/). PMCID: [PMC11190321](https://pmc.ncbi.nlm.nih.gov/articles/PMC11190321/).

Daniel J. Spakowicz and Carolyn J. Presley contributed equally. Correspondence: Carolyn J. Presley, carolyn.presley@osumc.edu.

The archived snapshot of this repository is [10.5281/zenodo.11200745](https://doi.org/10.5281/zenodo.11200745). The article is open access under the Creative Commons Attribution License (CC BY). Code in this repository is under the MIT license.

<details>
<summary>BibTeX</summary>

```bibtex
@article{grogan2024fitness,
  title   = {The {FITNESS} study: longitudinal geriatric assessment, treatment toxicity, and biospecimen collection to assess functional disability among older adults with lung cancer},
  author  = {Grogan, Madison and Hoyd, Rebecca and Benedict, Jason and Janse, Sarah and Williams, Nyelia and Naughton, Michelle and Burd, Christin E. and Paskett, Electra D. and Rosko, Ashley and Spakowicz, Daniel J. and Presley, Carolyn J.},
  journal = {Frontiers in Aging},
  volume  = {5},
  pages   = {1268232},
  year    = {2024},
  doi     = {10.3389/fragi.2024.1268232},
  pmid    = {38911592},
  pmcid   = {PMC11190321}
}
```

</details>

## Graphical abstract

This summary was drawn for the repository from the published results. It is not a journal figure.

![Graphical abstract of the FITNESS study. Fifty adults 60 years or older with NSCLC were followed at The Ohio State University from 2018 to 2020. Repeated measures covered geriatric assessment, treatment toxicity, stool microbiome, and peripheral blood T cells. A higher CARG score tracked with more grade 3 or higher toxicity. Gut microbes and T-cell LAG3 and CD8A tracked with functional scores.](figures/graphical-abstract.png)

## Which script makes which display item

Analyses were run in R 4.1. Notebooks live in `scripts/`. Several of them start with `source("00-paths.R")`. That helper is not in the repository; it points at controlled-access clinical and sequencing files. Where a plotting chunk reads an object already saved under `data/`, that path is noted below.

Figure 1 is not produced by code in this repository. Panel A is the CONSORT diagram, and panel B is the schematic of longitudinal biomarker collection.

| Manuscript item | Script | File written |
| --- | --- | --- |
| Figure 2. Treatment, toxicity, geriatric assessment, and biospecimen timeline | [`scripts/patient-timeline.Rmd`](scripts/patient-timeline.Rmd) | [`figures/timeline_fitness-patients.png`](figures/timeline_fitness-patients.png). The plot is drawn from [`data/timeline_all-lung-clinic.RDS`](data/timeline_all-lung-clinic.RDS). |
| Figure 3. Baseline CARG score and grade 3 or higher toxicity | [`scripts/carg_relationship-to-iraes.Rmd`](scripts/carg_relationship-to-iraes.Rmd) | [`figures/barplot_carg-tox.png`](figures/barplot_carg-tox.png) and [`figures/boxplot_carg-irAE.png`](figures/boxplot_carg-irAE.png), with matching PDFs. [`figures/CARG_bar-and-box.pdf`](figures/CARG_bar-and-box.pdf) places the boxplot as an inset on the bar chart. |
| Figure 4A. Longitudinal microbe associations with SPPB, PROMIS, and IADL | [`scripts/longitudinal-modeling_fixed-effects.Rmd`](scripts/longitudinal-modeling_fixed-effects.Rmd), then [`scripts/visualize_longitudinal-fixed-effects.Rmd`](scripts/visualize_longitudinal-fixed-effects.Rmd) | Model tables: `data/model_long-treat_sppb.csv`, `data/model_long-treat_promis.csv`, `data/model_long-treat_iadl.csv`, and `data/model_long-treat_timed-up-go.csv`. The published lollipop is [`figures/lollipop_long-fixef_many_legend.png`](figures/lollipop_long-fixef_many_legend.png) (same plot without the legend: `figures/lollipop_long-fixef_many.png`). That chunk reads `data/lollipop_all-models-df.RDS`, `data/lollipop_background-stripe-inputs.RDS`, and `data/lollipop_microbe-order.RDS`. |
| Figure 4B. Longitudinal IADL associations with T-cell *LAG3* and *CD8A* | [`scripts/Tcell-senescence_corr.Rmd`](scripts/Tcell-senescence_corr.Rmd) | [`figures/forestplot_iadl-genes.png`](figures/forestplot_iadl-genes.png) |
| Table 2, in part. Baseline medians and interquartile ranges for PROMIS-10, EORTC QLQ-LC13, functional status, BOMC, and SPPB | [`scripts/summary-statistics.Rmd`](scripts/summary-statistics.Rmd) | Printed in the notebook. A rendered copy is [`scripts/summary-statistics.html`](scripts/summary-statistics.html). |
| Supplementary Table S1. Longitudinal microbe models | [`scripts/longitudinal-modeling_fixed-effects.Rmd`](scripts/longitudinal-modeling_fixed-effects.Rmd) | [`tables/S1_fixed-effects-models.csv`](tables/S1_fixed-effects-models.csv) |
| Supplementary Table S2. Longitudinal T-cell gene models | [`scripts/Tcell-senescence_corr.Rmd`](scripts/Tcell-senescence_corr.Rmd) | [`tables/S2_longitudinal-modeling_nanostring.csv`](tables/S2_longitudinal-modeling_nanostring.csv) |
| Supplementary Table S3. Spearman sensitivity analysis | [`scripts/lmm_spearman-sensitivity.Rmd`](scripts/lmm_spearman-sensitivity.Rmd) | [`tables/S3_spearman-results.csv`](tables/S3_spearman-results.csv). A rendered copy is [`scripts/lmm_spearman-sensitivity.html`](scripts/lmm_spearman-sensitivity.html). |
| Supplementary Table S4. Clinical, microbiome, and NanoString source data | [`scripts/summary_data-for-supp.Rmd`](scripts/summary_data-for-supp.Rmd) | [`tables/S4_ClinicalSourceData.xlsx`](tables/S4_ClinicalSourceData.xlsx) |

Manuscript Table 1 (age, sex, ancestry, histology, stage, and first-line treatment for all 50 participants) is not assembled by a script in this repository.

### Other notebooks

These analyses are in the repository and are not the published figures.

| Script | What it does | Output |
| --- | --- | --- |
| [`scripts/sample-matching_baseline.Rmd`](scripts/sample-matching_baseline.Rmd) | Joins baseline clinical records to MetaPhlAn sample identifiers | Writes matched tables through `00-paths.R`, outside this repository |
| [`scripts/sample-matching_baseline_OneCodex.Rmd`](scripts/sample-matching_baseline_OneCodex.Rmd) | Same join for OneCodex profiles | Writes matched tables outside this repository |
| [`scripts/modeling_baseline-samples.Rmd`](scripts/modeling_baseline-samples.Rmd) | Earlier baseline microbe models (ASCO 2021), MetaPhlAn | `figures/barplot_carg-effects.pdf` when run |
| [`scripts/modeling_baseline-samples_OneCodex.Rmd`](scripts/modeling_baseline-samples_OneCodex.Rmd) | Same baseline models on OneCodex profiles, including a microbiome-matched characteristics table | `figures/Table1.csv` and `figures/barplot_carg-effects_OC.pdf` when run. This is not manuscript Table 1 |
| [`scripts/longitudinal-modeling.Rmd`](scripts/longitudinal-modeling.Rmd) | Earlier longitudinal SPPB and PROMIS plots | [`figures/timeline_sppb.png`](figures/timeline_sppb.png) and [`figures/timeline_promis.png`](figures/timeline_promis.png) |

`scripts/visualize_longitudinal-fixed-effects.Rmd` also writes single-outcome plots (`figures/longitudinal_fixeffect_*` and `figures/lollipop_long-fixef_{sppb,promis,iadl}.svg`) that were not the published multi-outcome lollipop.
