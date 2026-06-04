#HMMER analiza cada proteína de UniProt y busca si 
#contiene alguno de los dominios de las familias

hmmscan \
--tblout pfam_resultados.tbl \
PFAM_FAMILIAS/familias_pfam.hmm \
proteinas_uniprot.fasta

#Ver los resultados
grep -v "^#" pfam_resultados.tbl

