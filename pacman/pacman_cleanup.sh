#!/bin/bash

# remove unused dependencies
pacman -Qdtq | pacman -Rns - || true

# clear cache
pacman -Scc
