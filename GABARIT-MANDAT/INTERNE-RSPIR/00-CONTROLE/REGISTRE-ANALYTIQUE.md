# Registre analytique central

Une ligne par énoncé atomique. Ce registre remplace les registres séparés des sources, preuves et inconnues.

## Types permis

`source`, `fait`, `observation`, `declaration`, `hypothese`, `inference`, `contradiction`, `inconnue`, `recommandation`.

## Statuts permis

`a_verifier`, `actif`, `confirme`, `contredit`, `resolu`, `accepte_comme_limite`, `hors_portee`, `remplace`.

## Registre

| ID | Type | Énoncé | Source ou chemin | Emplacement | Date | Étape | Dxx ou périmètre | Décision influencée | Confiance | Preuve contraire ou limite | Vérification minimale | Responsable | Statut |
|---|---|---|---|---|---|---:|---|---|---|---|---|---|---|
| | | | | | | | | | | | | | |

## Règles

- Toute donnée absente reste inconnue.
- Un transcript prouve qu'une déclaration a été faite, pas qu'elle est vraie.
- Un exemple unique prouve l'existence d'un phénomène, pas sa fréquence.
- Une hypothèse importante porte un critère d'invalidation.
- Une recommandation compare les principales alternatives.
- Une inconnue nomme la décision qu'elle peut changer.
- Une information hors portée est conservée, mais n'alimente plus le Diagnostic.
- Les changements de confiance restent traçables.

