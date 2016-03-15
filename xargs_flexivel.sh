# move todos os arquivos txt do diretório corrente para o home
ls -1 *.txt | xargs -i mv {} ~/
