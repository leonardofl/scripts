#!/bin/bash
for i in *.jpg; do convert $i -resize 1024x800 $(basename $i .jpg).jpg; done
