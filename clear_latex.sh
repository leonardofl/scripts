
cat *.tex | sed -e 's/\\.*[[{]\(.*\)[]}]/\1/g' -e 's/\\item//g' -e 's/itemize//' -e 's/figure//' -e 's/centering//' -e 's/tabular//' -e 's/table//' -e 's/description//' -e 's/\\//' -e 's/~/ /' -e '/^%/d' > limpo.txt
