#!/bin/bash
# Aplica o comando "git rm" em todos os arquivos que foram removidos
git status -s | grep ' D ' | cut -d ' ' -f 3 | xargs git rm
