# GuidePro:A multi-source ensemble predictor for prioritizing sgRNAs in CRISPR/Cas9 protein knockouts

GuidePro is a two-layer ensemble predictor that enables the integration of multiple predictive methods and feature sets to predict sgRNA efficiency for the CRISPR/Cas9 protein knockouts! It integrates three sub-predictors trained with different types of features that jointly contribute to protein knockouts:i) The first predictor (OTA) predicts sgRNA on-target activity. ii) The second predictor (FSP) predicts the frameshift probabilities. iii) The third predictor (CKS) predicts the CRISPR knockout sensitivity from protein features(see Figure below). 

[Model_Training.ipynb](https://github.com/MDhewei/GuidePro/blob/master/Model_Training.ipynb): The source codes to reproduce all the results for model training part including feature importance, cross-validation, model training and comparison.

[Model_Testing.ipynb](https://github.com/MDhewei/GuidePro/blob/master/Model_Testing.ipynb): The source codes to reproduce the results about performance comparison between our method and other programs on dependent and independent datasets

sgRNA design for any given protein-coding gene, please check our online tool at http://smvxu.mdanderson.org:4949/GuidePro/

Contacts for any questions or requests: 
whe3@mdanderson.org

<div align="center"><img src="Figures/Workflow.png"  height="600" width="800"></div>


