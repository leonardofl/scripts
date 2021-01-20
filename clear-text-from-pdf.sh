# Instrução:
# Copie e cole o conteúdo do PDF em text.txt (deixando uma linha em branco entre os parágrafos); aí rode o comando:
cat text.txt | tr '\n' '|' | sed -e 's/-|//g' -e 's/||/\n\n/g' -e 's/|/ /g'

# A idéia é juntar as linhas de textos copiados de PDF que, quando colados em texto puro, ficam tipo assim:
#
# In GT, data collection and analysis are interspersed,
# so the emerging theory guides which data to sample next,
# considering gaps and questions suggested by previous anal-
# ysis. This process—called theoretical sampling—does not
# consider usual statistical notions of verificational meth-
# ods, such as significant sample. Instead, researchers must
# ...

