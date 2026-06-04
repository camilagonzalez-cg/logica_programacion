#Comparar las dos bases de datos
hmmscan \
--tblout pfam_resultados.tbl \
PFAM_FAMILIAS/familias_pfam.hmm \
proteinas_uniprot.fasta

#Ver resultados

grep -v "^#" pfam_resultados.tbl