# db-modeling-series
Série d’exercices de modélisation de bases de données.

## Modélisation Royalties

Pour lancer la création du schema :

```bash
sqlite3 base.db < schema.sql
```

Ajout des données : 

```bash
sqlite3 base.db < data.sql
```

Visualisation via sqlitebrowser :

```bash
sqlitebrowser base.db
```

### Execution en une ligne :

```bash
cd modelisation_royalties
./createDB.sh
```

## Modélisation Bibliothèque

Intégration de la modélisation d’une bibliothèque et de la demande client associée. Cette modélisation comporte des erreurs, dont une partie est indiquée dans le fichier **problems-identified.md**