# SEDAR 84 Review Workshop HW {.unnumbered}

Included is a compilation of the stock assessment model runs developed during the SEDAR 84 Review Workshop held from July 15 to July 18, 2025 in Fort Lauderdale, Florida.

Building on the models documented in the stock assessment report model runs for each island platform and species combination (Stoplight Parrotfish in St. Croix, USVI; Yellowtail Snapper in St. Thomas and St. John; USVI, and Yellowtail Snapper in Puerto Rico) the review workshop introduced several refinements and exploratory runs. The initial review workshop model for each island used a single-sex configuration and applied the Stock Synthesis F method option 2 with corrected standard error units for the NCRMP survey index of abundance. The second model for each platform estimated two growth parameters (the growth coefficient K and the mean length at maximum age). For Yellowtail Snapper in St. Thomas and St. John, a third model explored the use of a plus group at age 12.

For Puerto Rico Yellowtail Snapper, a third and a fourth model were developed. The third model added a survey corresponding to the spatially restricted years of the NCRMP and a combination of splines and time blocks to model selectivity and capture shifts in the size composition of the commercial hand line fleet. To test for model convergence, the fourth model built on this structure with estimated growth parameters (the growth coefficient K and the length at maximum age).

Finally, two models were developed with combined data from Puerto Rico and St. Thomas and St. John, USVI. These included two fleets and five surveys, with spatially restricted NCRMP surveys incorporated separately from the island-wide surveys recommended by the data workshop and included in the assessment report model runs. To test for model convergence, the second model built on this structure with fixed selectivity and steepness and estimated length at maximum age.

The following table summarizes the models described above, and the subsequent sections provide R4SS-generated figures. PNG versions of the plots are available in the corresponding GitHub repository.

{{< pagebreak >}}

| Model | Description |
|:-----------------|------------------------------------------------------|
| STX_RW_1 | Single Sex, F method 2, Catch SE = 0.3, and Corrected Survey SE |
| STX_RW_2 | STX_RW_1 + Catch SE = 2 and Estimated Growth |
| STTJ_RW_1 | Single Sex, F method 2, Catch SE = 0.3, and Corrected Survey SE |
| STTJ_RW_2 | STTJ_RW_1 + Catch SE = 2 and Estimated Growth |
| STTJ_RW_3 | STTJ_RW_1 + 12-year Age Plus Group |
| PR_RW_1 | Single Sex, F method 2, Catch SE = 0.3, and Corrected Survey SE |
| PR_RW_2 | PR_RW_1 + Catch SE = 2 and Estimated Growth |
| PR_RW_3 | PR_RW_1 + La Parguera Survey and Selectivity Spline; **does not converge** |
| PR_RW_4 | PR_RW_3 + Estimated Growth |
| PR_STTJ_RW_1 | PR_RW_3 + STTJ Fleet and STJ Survey; **does not converge** |
| PR_STTJ_RW_2 | PR_STTJ_RW_1 + Estimated Length at Maximum Age and Fixed Selectivity and 0.8 Steepness |

: Summary of Review Workshop SEDAR 84 models. {#tbl-rw-dev}

This repository is a scientific product and is not official communication of the National Oceanic and Atmospheric Administration, or the United States Department of Commerce. All NOAA GitHub project code is provided on an ‘as is’ basis and the user assumes responsibility for its use. Any claims against the Department of Commerce or Department of Commerce bureaus stemming from the use of this GitHub project will be governed by all applicable Federal law. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by the Department of Commerce. The Department of Commerce seal and logo, or the seal and logo of a DOC bureau, shall not be used in any manner to imply endorsement of any commercial product or activity by DOC or the United States Government.
