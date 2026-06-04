# EspecializacionBioinformatica
# Lógica de programación

Este es un repositorio del módulo de lógica de programación en la especialización en bioinformática, aquí se consigna el pipeline para descargar familias especificas de proteínas de pfam y secuencias de aminoacidos desde uniprot. Para ejecutar la descarga se tiene que utilizar el comando wsl bash.

dos2unix DescargasPfam.sh (dar compatibilidad entre MS2 (windows) y unix (linux))

Una vez descargas y construidas ambas bases de datos (pfam y uniprot) se debe correr el alineamiento.

Luego se construye una base de datos HMM a partir de familias Pfam seleccionadas y posteriormente las secuencias proteicas descargadas desde UniProt son analizadas mediante HMMSCAN para identificar dominios conservados. Los resultados permitieron clasificar las proteínas de acuerdo con la presencia de dominios funcionales.

hmmscan encontró dos proteínas con el dominio Protein kinase (Pkinase, PF00069). Para las demás proteína no se hallaron coincidencias.