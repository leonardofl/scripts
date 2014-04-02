
# replaces content of multiple files with find, xargs, and sed.

find . -name '*.py' | xargs sed -i 's/find/replace/'

