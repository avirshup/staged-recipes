#!/usr/bin/env bash

install_location=$(python -c "import moldesign, os; print(moldesign.__path__[0])")
test_location=$(dirname "${install_location}")

conda install -c openbabel openbabel

# Just test basic data handling, not the full suite
py.test moldesign/_tests/test_atom_containers.py
