
This document specifies the contents of testing dataset2 for the validation of predicted CRISPR/Cas9 on-target protein knockout efficiency.


#results

Spearman_correlation_independent_datasets.tsv
Includes Spearman correlation coefficient between predicted efficiency and experimental outcomes Essential_Zscore (in terms of knockout efficiency: GeCKOv2 or fold change: other csv files).

fold change = log2( (reads count after sgRNA is introduced) / (reads before sgRNA is introduced) )
Note: smaller fold change (less than 0) indicates higher efficiency of sgRNA activity.


#log files:

log_add_protein_features_testset2.tsv
Includes updated symbol and locus when comparing original sgRNA information with protein feature annotation. 'NA': the original symbol & locus are not found in the annotation.

log_add_CRISPRO_score_testset2.tsv
Includes updated double strand break (DSB) locus, gene name and amino acid locus at DSB when comparing original sgRNA information with protein feature annotation. 'NA': the original DSB is not annotated.


#testing data: all the *.csv files.


Note that index (first column) in Testing_Evers2016-RT112.csv and Testing_Evers2016-UMUC3.csv are the same, as they are the same set of sgRNAs tested in different cell lines.

Last update: March 5, 2020



The source of testing dataset2.


## CRISPRO
## PMID: 30340514 

Schoonenberg, V. A., Cole, M. A., Yao, Q., Macias-Treviño, C., Sher, F., Schupp, P. G., ... & Bauer, D. E. (2018). CRISPRO: identification of functional protein coding sequences based on genome editing dense mutagenesis. Genome biology, 19(1), 169.

Additional file 3:
Table S2, Annotated CRISPRO output (XLSX 33034 kb)
https://static-content.springer.com/esm/art%3A10.1186%2Fs13059-018-1563-5/MediaObjects/13059_2018_1563_MOESM3_ESM.xlsx



## GeCKOv2
## PMID: 25075903 
Sanjana, N. E., Shalem, O., & Zhang, F. (2014). Improved vectors and genome-wide libraries for CRISPR screening. Nature methods, 11(8), 783.

https://depmap.org/portal/download/
GeCKO 19Q1	gene_effect.csv 	02/19
GeCKO 19Q1	essential_genes.txt	02/19



## Essential-RT112 (43 genes, 7.86 sgRNA/gene)
## PMID: 27111720 

Evers, B., Jastrzebski, K., Heijmans, J. P., Grernrum, W., Beijersbergen, R. L., & Bernards, R. (2016). CRISPR knockout screening outperforms shRNA and CRISPRi in identifying essential genes. Nature biotechnology, 34(6), 631.

Supplementary Table 2
Data of CRISPR screen (XLSX 240 kb)
https://static-content.springer.com/esm/art%3A10.1038%2Fnbt.3536/MediaObjects/41587_2016_BFnbt3536_MOESM7_ESM.xlsx



## EKO-NALM6 (916 genes; 9.70 sgRNA/gene)
## PMID: 29038160

Bertomeu, T., Coulombe-Huntington, J., Chatr-aryamontri, A., Bourdages, K. G., Coyaud, E., Raught, B., ... & Tyers, M. (2018). A high-resolution genome-wide CRISPR/Cas9 viability screen reveals structural features and contextual diversity of the human cell-essential proteome. Molecular and cellular biology, 38(1), e00302-17.

Supplemental file 2 -
Table S1 (sgRNA sequences in EKO library) XLSX, 15M
https://mcb.asm.org/highwire/filestream/9193/field_highwire_adjunct_files/1/zmb001181670sd2.xlsx

Supplemental file 3 -
Table S1 (sgRNA sequences in EKO library)XLSX, 15M
https://mcb.asm.org/highwire/filestream/9193/field_highwire_adjunct_files/2/zmb001181670sd3.xlsx



