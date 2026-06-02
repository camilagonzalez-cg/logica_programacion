familias=(
"Pkinase"
"Ras"
"SH2"
"SH3_1"
"zf-C2H2"
"HTH_1"
"bZIP_1"
"Myb_DNA-binding"
"RRM_1"
"DEAD"
"KH_1"
"dsrm"
"ABC_tran"
"MFS_1"
"Ion_trans"
"Aminotran_1_2"
"Aldedh"
"TIM"
"NAD_binding_1"
"GST_C"
"WD40"
"Ank"
"TPR_1"
"LRR_1"
"HSP70"
"HSP20"
"DnaJ"
"Response_reg"
"HisKA"
"Peptidase_M16"
"Sigma70_r2"
"ig"
"EGF"
"Cadherin"
)

mkdir -p PFAM_FAMILIAS

for fam in "${familias[@]}"
do
    echo "Descargando $fam ..."
    hmmfetch Pfam-A.hmm "$fam" > "PFAM_FAMILIAS/${fam}.hmm"
done

#Concatenar
cat PFAM_FAMILIAS/*.hmm > PFAM_FAMILIAS/familias_pfam.hmm

#Eliminar los archivos individuales
find PFAM_FAMILIAS -type f -name "*.hmm" ! -name "familias_pfam.hmm" -delete

#Indexar
hmmpress PFAM_FAMILIAS/familias_pfam.hmm

echo "Proceso terminado"
