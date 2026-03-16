# Problèmes identifiés

## Les primary key

Dans la modélisation choisie, plusieurs table ne possèdent pas de primary key (comme EXEMPLAIRE, CATEGORIE, ETUDIANT...) ou bien possèdent une primary key incorrecte:

- Deux livres peuvent avoir le même nom
- Deux auteurs peuvent avoir le même nom
- Deux bibliothécaires peuvent avoir le même nom

La solution à ce problème est l'utilisation d'un identifiant unique : ID_Categorie, ID_Livre, ID_AUTEUR ...

Cela permettra d'avoir des entités pouvant partager des informations communes.

## Manque de certaines informations présentes dans la demande client

Il manque les éléments suivants:

- Le numéro étudiant (en int dansETUDIANT) -> qui pourrait être une primary key
- Le nombre de pages (en int dans LIVRE)
- Les coordonnées (en string dans EDITEUR)
- Les dates de début et de fin de sanction (en date dans SANCTION)
- La date d'expiration de la réservation (en date dans RESERVATION)

Le manque du nombre de pages et des coordonnées n'est pas un problème important, mais le manque des dates est critique. Il devient alors impossible de savoir quand les sanctions sur un étudiant sont finies.

## Aucun historique

Afin de conserver une traçabilité des emprunts, il faut conserver un historique similaire à la table RESERVATION, ce qui permettra d'avoir la date de début et de fin de prêt par quel étudiant et pour quel exemplaire d'un livre et savoir si il y a un retard/pénalité.

## Problème de réservation

Il existe bien une relation entre RESERVATION et ETUDIANT, mais il manque une relation avec un livre/exemplaire pour connaitre la cible de la réservation. Ce problème est critique en ne permettant pas de connaitre le but de la réservation et la possibilité d'indiquer à l'étudiant la disponibilité de l'ouvrage.

## Intégration de la contrainte via la cardinalité

Afin de prendre en compte la contrainte :

- Pas plus de 5 emprunts par étudiant

Cela peut être visuellement intégré via la cardinalité !

## Soucis dans la relation entre LIVRE et AUTEUR

Nous avons pu voir dans la demande client qu'un livre peut être écrit par plusieurs auteurs et un auteur peut écrire plusieurs livres (un many-to-many), mais cela n'est pas du tout le cas dans la modélisation.

## Intégration d'un statut sur les exemplaires

Afin d'avoir un accès rapide à la disponibilité d'un exemplaire, il est préférable d'ajouter un statut (disponible/emprunté/perdu/reservé). Cela permet d'éviter l'exécution de requêtes complexes et couteuse pour déterminer l'état actuel d'un exemplaire.

## D'autre problème à venir ...