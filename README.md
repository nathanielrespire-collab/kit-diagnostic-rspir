# Architecture opérationnelle du Diagnostic RSPIR — V0.1 en validation

Ce dépôt contient la méthode interne, l'orchestration, les gabarits et les contrôles du Diagnostic RSPIR. Il ne constitue pas encore le livrable client final mis en page ni une preuve que le système a été transféré et testé sur un mandat réel.

La source d'autorité est incluse dans `SOURCES-OFFICIELLES/`. Le PDF prévaut; le TXT sert uniquement à faciliter la recherche.

## Créer un mandat

```powershell
.\INITIALISER-NOUVEAU-MANDAT.ps1 -Client "Nom du client" -Destination "C:\Dossier\Mandats"
```

L'initialisateur copie le gabarit, le noyau et les références, puis crée deux zones :

- `INTERNE-RSPIR` : sources, transcripts, analyses, contrôles et versions de travail;
- `LIVRABLES-CLIENT` : seulement les versions validées et partageables.

## Exécuter

1. Lire `NOYAU-AGENT.md`.
2. Lire les deux références RSPIR.
3. Lire le manifeste du mandat.
4. Lire le contrat `ORCHESTRATION-DES-COMMANDES.yaml`.
5. Exécuter seulement la commande autorisée.
6. Mettre à jour le registre analytique et le journal.
7. S'arrêter avant l'étape suivante.

## Parcours

`Démarrage → Cadrage → Immersion et lecture → Convergence → Approfondissement → Décision → Suivi`

Les quinze étapes de l'offre demeurent dans ce parcours. Le client ne voit que les moments qui lui apportent de la valeur.

## Règle des 31 dimensions

Toutes servent au balayage. Seulement quelques zones deviennent candidates. Un seul périmètre vertical est approfondi dans le Diagnostic standard.

## Avant de partager

Exécuter les contrôles applicables. Aucun fichier interne n'est déplacé dans `LIVRABLES-CLIENT` sans validation humaine.
