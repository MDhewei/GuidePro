#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Oct 15 07:30:03 2020

@author: Wei He

@contact: hwkobe.1027@gmail.com
"""

import sys
import pandas as pd

genome, genefile = sys.argv[1:3]

df_genome = pd.read_csv('Genome-wide-sgRNA-Selection-'+genome+'.csv')

filelist = open(genefile).readlines()

df = pd.DataFrame()
for gene in filelist:
    print('Extracting sgRNA for %s'%gene.strip('\n'))
    df_gene = df_genome[df_genome['gene']==gene.strip('\n')]
    df = pd.concat([df,df_gene])
print('Saving files ...')    
df.to_csv('Query-sgRNA-Selection.csv',index=False)
print('Done!')
    



