#!/bin/bash
# De olho no concurso de Osasco

TOKEN='fono'

for edicao in {1288..998}
do

    echo "Olhando a edição $edicao..."

    if [ $edicao -gt 1054 ]; then
        ano=2014
    else
        ano=2013
    fi

    url="http://www.iomo.osasco.sp.gov.br/$ano/ed$edicao.pdf"
    pdf="ed$edicao.pdf"
    txt="ed$edicao.txt"

    cd /tmp
    wget $url &> /dev/null
    pdftotext $pdf $txt

    if cat $txt | grep -iq $TOKEN; then
        echo "Ocorrência de '$TOKEN' na edição $edicao:"
        cat $txt | grep -i $TOKEN
        read -p "Pressione ENTER para abrir o PDF..."
        evince $pdf
    fi

done

# Executado em 24/10/16, última convocação do concurso para fono encontrada na edição 1248.
