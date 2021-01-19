# copia e cola conteúdo do PDF em text.txt (deixando uma linha em branco entre os parágrafos) e aí roda o script
cat text.txt | tr '\n' '|' | sed -e 's/-|//g' -e 's/||/\n\n/g' -e 's/|/ /g'
