#!/bin/sh

# Set the base directory for the translation catalogs
LOCALES_DIR="./locales"

# Set the domain for the translation catalogs
DOMAIN="lokalise"

# Extract translatable strings from source code and update .pot file
pybabel extract -o $LOCALES_DIR/$DOMAIN.pot test.py

# Update .po files with new translatable strings
pybabel update -d $LOCALES_DIR -D $DOMAIN -i $LOCALES_DIR/$DOMAIN.pot

# # Compile .po files into .mo files
# pybabel compile -d $LOCALES_DIR -D $DOMAIN
