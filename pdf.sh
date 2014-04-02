#!/bin/bash

# Split from page 1 to page 65
pdftk original.pdf cat 1-65 output parte1.pdf dont_ask 

# Split from page 66 to the end
pdftk original.pdf cat 66-end output parte2.pdf dont_ask 

# Merge pdfs
pdftk parte1.pdf parte2.pdf cat output merged.pdf dont_ask 

# Save metadata
pdftk orignial.pdf dump_data > metadata.txt

# Restore metadata
pdftk temp.pdf update_info metadata.txt output final.pdf dont_ask

