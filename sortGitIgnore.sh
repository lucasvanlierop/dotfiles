#!/usr/bin/env bash
sort .gitignore | sed -e '/^[[:space:]]*$/d' > .gitignore.bak && mv .gitignore.bak .gitignore
