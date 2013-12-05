#!/bin/bash
#removes track number and inserts band name into songs files names in the current folder
#author Leonardo Leite
#license GPL v3

band='Trivium'

for song in *.mp3
do
  new_name=`echo $song | sed 's/[0-9]*\(.*\)/\1/'`
  new_name=$band$new_name
  echo 'renaming '$song
  mv "$song" "$new_name"
done
