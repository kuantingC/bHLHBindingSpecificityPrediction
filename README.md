## Prediction of bHLH Protein-DNA Binding Specificity with DNA Geometric Structure in Addition to DNA sequence Data.

### Motivation: 
Determining the DNA recognition properties of transcription factors is important to answer the question of how proteins achieve their unique regulatory roles in the cell. The development of protein binding microarrays provides scientists with a high-throughput characterization of the sequence specificities of DNA binding proteins. However, recent studies report that some proteins are bound at a different position depending on their genomic context. A higher-order regulatory mechanism should be elicited to explain this inconsistency of in vitro and in vivo protein binding affinity and position. 

### Background: 
The accurate prediction of protein-DNA binding sites is crucial for solving many biological problems, such as unraveling the molecular mechanisms of certain cellular functions, identifying functionally relevant to proteins, and dissecting the gene regulatory networks. The current methods consider the nucleotide sequence data to be the primary feature for the prediction of the protein-DNA binding affinity. Some recent studies show that the nucleotide sequence may not be the only regulatory mechanism. The three-dimension structure of the genome also profoundly contributes to the DNA-binding specificity by changing electrostatic potential and van der Waals interaction between nucleotides. 

### Proposed Work: 
In this project, I will first implement a model for the prediction of protein-DNA binding affinity based on simple linear regression and support vector regression algorithm. The main advantage of SVR is its flexibility in the choice of the threshold separating the solvent from insolvent companies. Secondly, DNA shape and three-dimension structure information are introduced as additional features to evaluate the correlation between nucleotide sequence and DNA shape and to analyze the role of DNA shape in regulating protein-DNA binding affinity. 

### Timeline: 
The short-term aim would be to build a regression-based model with nucleotide sequence features. I will work on DNA nucleotide sequence data and perform regression algorithms such as linear regression and support vector regression to examine how well the algorithm can predict protein- DNA binding affinity. The long-term aim of this project is to answer the question of why a protein only binds to small subsets of many putative binding sites. I will include DNA sharp data, such as minor groove width, propeller twist, as other predictors to evaluate the role of DNA shape in determining the DNA-protein binding affinity. 

### Deliverables: 
Coefficient of determination, or R squared, will be used to evaluate by regression-based models with two sets of feature inputs, one is nucleotide sequence and the other is DNA shape data. If the DNA shape does co-regulate the protein-DNA binding affinity on the genome, the R squared value will outperform the predicting model without DNA shape features. By comparing the result of the two models, we can find the role of DNA shape in determinants of the DNA-protein binding affinity. 

### Data: 
The dataset used in this project is the bHLH binding affinity data from the protein binding microarrays experiment can be found at the Gene Expression Omnibus (GEO) under accession number GSE59845. 

### Software Tools: 
The programming work will be done in Matlab/R. GBshape, a genome browser for DNA shape annotation, is used to generate the parameters describing DNA shape and 3D structure.


### Reference:
[1] 	Rohs R, West SM, Sosinsky A, Liu P, Mann RS, Honig B., “The role of DNA shape in protein-DNA recognition.,” Nature, 29 10 2009. 
[2] 	Chiu TP, Yang L, Zhou T, Main BJ, Parker SC, Nuzhdin SV, Tullius TD, Rohs R., “GBshape: a genome browser database for DNA shape annotations.,” J Biomol Struct Dyn, 5 2015. 
[3] 	Raluca Gordân, Ning Shen, Iris Dror, Tianyin Zhou, John Horton, Remo Rohs, and Martha L. Bulyk, “Genomic regions flanking E-box binding sites influence DNA binding specificity of bHLH transcription factors through DNA shape,” Cell Rep, 4 4 2013. 

