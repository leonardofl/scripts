# Exemplo
# A parte importante é o `tr -s " "`
# Sem isso, o cut não funciona
docker image list | grep none | tr -s " " | cut -f 3 -d ' ' | xargs docker image rm -f
