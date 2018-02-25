
find . -name '*.py' | xargs grep -i -n -H --color pattern
# or
egrep -rin --color pattern
# rin = recursive, ignore-case, and number line

