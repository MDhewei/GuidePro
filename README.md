# GuidePro:sgRNA Selection for CRISPR-Cas9 mediated Protein Knockouts

GuidePro is a two-layer ensemble predictor that enables the integration of multiple predictive methods and feature sets to predict sgRNA efficiency for the CRISPR/Cas9 protein knockouts! It integrates three sub-predictors trained with different types of features that jointly contribute to protein knockouts:i) The first predictor (OTA) predicts sgRNA on-target activity. ii) The second predictor (FSP) predicts the frameshift probabilities. iii) The third predictor (CKS) predicts the CRISPR knockout sensitivity from protein features(see Figure below). Check our online tool at http://smvxu.mdanderson.org:4949/GuidePro/

![](Figures/Workflow.png)

The source codes for model training are included in [Model_Training.ipynb](https://github.com/MDhewei/GuidePro/blob/master/Model_Training.ipynb) file, it contains the codes to reproduce all the results about feature importance, cross-validation, model training and comparison.

The source codes for comparing different methods are included in [Model_Testing.ipynb](https://github.com/MDhewei/GuidePro/blob/master/Model_Testing.ipynb) file, it contains the codes to reproduce the results about performance comparison between our method and other programs on dependent and independent datasets

Contacts for any questions or requests: 
whe3@mdanderson.org

