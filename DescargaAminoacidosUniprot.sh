#!/usr/bin/env bash

proteinas=(
"P04637"
"P38398"
"P68871"
"P01308"
"P02768"
"P99999"
"P00533"
"P31749"
"P01375"
"Q9BYF1"
"P42212"
"P00698"
"P02144"
"P00582"
"P0A7G6"
)

mkdir -p UNIPROT

for id in "${proteinas[@]}"
do
    echo "Descargando $id ..."
    wget -O prueba.fasta "https://rest.uniprot.org/uniprotkb/P04637.fasta"
done

cat UNIPROT/*.fasta > proteinas_uniprot.fasta

echo "Descarga terminada"