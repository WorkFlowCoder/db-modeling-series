#!/bin/bash

DB_NAME="dataBase.db"

if [ -f "$DB_NAME" ]; then
    rm "$DB_NAME"
fi

# Créer la base avec le schema
sqlite3 "$DB_NAME" < schema.sql

# Ajouter les données
# sqlite3 "$DB_NAME" < data.sql