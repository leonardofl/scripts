# copia e cola conteúdo do PDF em text.txt e aí roda o script
cat text.txt | tr '\n' '|' | sed -e 's/-|//g' -e 's/||/\n\n/g' -e 's/|/ /g'
