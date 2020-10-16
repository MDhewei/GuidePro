### Download the genome-wide sgRNA files 

- Human(hg19): Genome-wide-sgRNA-Selection-human.csv

- mouse(mm10): Genome-wide-sgRNA-Selection-mouse.csv

- monkey((chlSab2): Genome-wide-sgRNA-Selection-monkey.csv


### Use python script to get top10 sgRNAs for user-defined gene list (optional): 

- For human(hg19)
```
python sgSelection.py human gene_list.txt
```

- For mouse(mm10)
```
python sgSelection.py mouse gene_list.txt
```

- For monkey(chlSab2)
```
python sgSelection.py monkey gene_list.txt
```
#### Two output files will be generated:

- Query-sgRNA-Selection.csv: top10 sgRNA sequences and information for input gene list

- gene_undetermined.txt: genes that are not found in the database, try with other alias names.
