# Prompt Claude — révision exhaustive et strictement en lecture seule

Copie tout le bloc ci-dessous dans Claude après avoir connecté le dépôt privé
`nathanielrespire-collab/kit-diagnostic-rspir` et synchronisé sa branche la plus
récente.

---

Tu agis comme un **comité indépendant de révision de calibre international** du
Diagnostic RSPIR. Ton mandat n'est pas d'améliorer les fichiers directement :
il est de déterminer, avec preuve, si le système produit réellement une valeur
de conseil justifiant 3 500 $ et plus pour un dirigeant de PME.

## Règle absolue : lecture seule

Tu ne dois faire **aucun changement** :

- ne modifie, ne crée, ne renomme et ne supprime aucun fichier;
- ne fais aucun commit, aucune branche, aucune pull request et aucun push;
- n'ajoute aucun commentaire, enjeu ou action dans GitHub;
- n'applique aucune de tes recommandations;
- ne déclenche aucun outil, envoi, automatisation ou action externe;
- ne remplis jamais un manque par une information plausible.

Ton unique sortie est un rapport de révision dans cette conversation. Si ton
environnement te propose d'écrire dans le dépôt, refuse et poursuis en lecture
seule.

## Principe d'autorité

Commence par lire **au complet** :

`SOURCES-OFFICIELLES/OFFRE-FINALE-RSPIR-2026-08-18.pdf`

Le PDF est la seule autorité sur la valeur, la promesse, la portée, le
mécanisme, les prix, les exclusions et la garantie. Le fichier TXT voisin sert
uniquement à chercher et à retrouver des passages; en cas d'écart, le PDF
prévaut. Aucun autre fichier d'offre, résumé ou ancien document ne peut le
remplacer.

Avant de regarder le kit, produis un **mémo de compréhension de l'offre** qui
explique, avec les pages pertinentes du PDF :

1. le problème réel du client et la décision qu'il achète;
2. la promesse, la valeur perçue et ce qui différencie RSPIR;
3. le mécanisme complet et ses quinze étapes;
4. le rôle des 31 dimensions comme radar, jamais comme 31 audits;
5. la convergence vers un seul périmètre vertical prioritaire;
6. les douze sections attendues du Dossier de décision;
7. les neuf questions du value stack;
8. les sept critères de garantie, ses limites et ses exclusions;
9. les paliers de prix et ce qui doit soutenir une valeur de 3 500 $ et plus;
10. les frontières entre Diagnostic, implantation et phase 2;
11. les moments de valeur avant, pendant et après le rapport;
12. ce qui peut être standardisé et ce qui exige un jugement humain.

Ne commence pas l'évaluation du kit avant d'avoir terminé ce mémo. Si une
notion demandée n'existe pas dans l'offre, écris clairement « absente de
l'offre » plutôt que de l'inventer.

## Ordre de lecture après le mémo

1. `README.md`
2. `KIT-DIAGNOSTIC-V1/README.md`
3. `KIT-DIAGNOSTIC-V1/REFERENCES-RSPIR/REFERENCE-AGENT-DIAGNOSTIC.md`
4. `KIT-DIAGNOSTIC-V1/REFERENCES-RSPIR/RADAR-D01-D31.md`
5. `KIT-DIAGNOSTIC-V1/NOYAU-AGENT.md`
6. `KIT-DIAGNOSTIC-V1/GABARIT-MANDAT/INTERNE-RSPIR/00-CONTROLE/ORCHESTRATION-DES-COMMANDES.yaml`
7. `KIT-DIAGNOSTIC-V1/CONTROLEURS/CONTROLES-DU-DIAGNOSTIC.md`
8. `KIT-DIAGNOSTIC-V1/SOP-INTERNE-UTILISATION-DU-KIT.md`
9. tous les modèles du kit réutilisable;
10. `TEST-COMPLET-ATELIER-BOREAL/00-GUIDE-HUMAIN-DU-TEST.md`
11. toutes les sources fictives, tous les transcripts, le registre analytique,
    les étapes internes et les livrables client du test;
12. `TEST-COMPLET-ATELIER-BOREAL/INTERNE-RSPIR/00-CONTROLE/RAPPORT-TEST-BOUT-EN-BOUT.md`
13. le DOCX et le PDF final du test;
14. tous les documents de `CONTRATS-V0.9-A-VALIDER/`, en gardant en tête qu'ils
    ne constituent pas un avis juridique.

Ne juge jamais la qualité au nombre de fichiers. Vérifie ce qu'un fichier fait,
ce qu'il permet de décider et s'il est réellement utilisable.

## Discipline de preuve

Pour chaque observation, indique le chemin exact du fichier et la page, la
section ou la ligne lorsque disponible. Étiquette chaque énoncé avec une seule
des provenances suivantes :

- **OFFRE** — exigence explicitement présente dans le PDF maître;
- **CONCEPTION RSPIR** — choix de méthode ajouté pour opérationnaliser l'offre;
- **TEST FICTIF** — donnée ou résultat propre à Atelier Boréal;
- **INFÉRENCE** — conclusion raisonnable, mais non prouvée directement;
- **DÉCISION MANQUANTE** — validation humaine, commerciale, technique ou
  juridique encore requise.

Ne transforme jamais une hypothèse en fait. Ne traite jamais une validation
fictive comme une validation réelle. Tout chiffre doit avoir une source et une
date, sinon il est « à vérifier ».

## Comité de sept spécialistes

Adopte successivement chacun des rôles ci-dessous. Chaque spécialiste doit
produire son **propre avis complet**, même s'il est en désaccord avec les
autres. Ne fusionne pas prématurément leurs points de vue.

### 1. Consultant d'élite en diagnostic organisationnel

Évalue la capacité du Diagnostic à révéler les vrais blocages de décision, les
causes, les dépendances humaines, les processus, les systèmes et les conditions
de changement. Vérifie que le travail ne devient ni un audit exhaustif ni une
liste générique d'opportunités.

### 2. Expert en offre de conseil premium et productisation

Évalue la valeur perçue et réelle, la différenciation, le rapport prix-effort,
les moments où le client ressent de la valeur, et la cohérence entre les
paliers. Réponds franchement : pourquoi un dirigeant paierait-il 3 500 $, 5 500
$ ou 7 500 $; et pourquoi refuserait-il? Repère le remplissage, les répétitions
et les éléments qui donnent une apparence de volume sans augmenter la valeur.

### 3. Architecte de systèmes d'agents et d'orchestration fiable

Teste la chaîne complète : entrées, sorties, chemins, portes humaines,
contrôles, reprises, erreurs, arrêt, traçabilité et séparation interne/client.
Cherche les endroits où un agent pourrait halluciner, sauter une étape,
écraser une preuve, produire trop tôt un livrable ou continuer malgré une
entrée manquante.

### 4. Expert de l'expérience dirigeant et des documents de décision

Évalue chaque rencontre et chaque livrable depuis la perspective d'un PDG très
occupé. Le Dossier final permet-il de comprendre le problème, la priorité, le
cas économique, les conditions, la Stop List et la prochaine décision sans
explication orale de RSPIR? La marque soutient-elle la clarté plutôt que de la
remplacer?

### 5. Auditeur contradictoire de la preuve et du cas économique

Remonte chaque conclusion importante jusqu'à sa source brute. Cherche les
contradictions, les causalités non démontrées, les estimations déguisées en
faits, le double comptage, les promesses implicites de rendement et les
recommandations plus certaines que les données disponibles.

### 6. Réviseur risques, confidentialité et contrats

Sans donner d'avis juridique, vérifie la cohérence entre l'offre, le parcours,
les contrats V0.9, le consentement, les données personnelles, les outils, les
lieux de traitement, la rétention, la suppression, les sous-traitants et la
garantie. Distingue ce que l'équipe peut corriger de ce qui exige un avocat du
Québec ou une décision de l'entité contractante.

### 7. Acheteur sceptique — PDG/CFO de PME

Lis le tout comme quelqu'un qui paie de sa poche et ne veut ni jargon ni
consultation décorative. Dis ce qui te convainc, ce qui diminue ta confiance,
ce qui manque pour signer, ce que tu utiliserais réellement lundi matin et ce
que tu juges superflu.

## Format obligatoire de l'avis de chaque spécialiste

Pour chacun des sept rôles, fournis :

1. son verdict sans diplomatie inutile;
2. les bons coups à conserver;
3. les faiblesses ou mauvais coups;
4. les risques et éléments à surveiller;
5. les preuves exactes qui soutiennent chaque constat;
6. ce qu'il faut **garder, corriger, retirer ou ajouter**;
7. ce que l'agent peut accomplir seul, ce que Nath et Antoine doivent valider
   ensemble, et ce qui doit venir de Nath ou d'un professionnel externe;
8. ses cinq actions prioritaires, classées par valeur, effort et risque;
9. la note qu'il donnerait à la préparation pour un premier client réel, avec
   justification.

Une critique de style n'est pas prioritaire si elle ne change ni la décision,
ni la confiance, ni la valeur, ni le risque. Une lacune bloquante doit être
nommée même si le reste est très bien fait.

## Tests transversaux obligatoires

Après les sept avis, effectue ces tests :

### Fidélité à l'offre

- Les quinze étapes existent-elles dans le bon ordre et avec le bon sens?
- Les 31 dimensions restent-elles un radar de sélection?
- Un seul vertical est-il approfondi?
- Les douze sections, neuf questions et sept critères sont-ils complets?
- La frontière de la phase 2 et les exclusions sont-elles protégées?

### Parcours réel simulé

Rejoue mentalement un mandat depuis l'arrivée d'un lead jusqu'au suivi. À
chaque étape, précise : entrée requise, personne responsable, action de l'agent,
sortie produite, contrôle, décision humaine, condition d'arrêt et risque
d'erreur. Signale tout passage qui dépend encore du concepteur du kit.

### Test de valeur à 3 500 $ et plus

Détermine si le client reçoit :

- une compréhension qu'il ne pouvait pas obtenir seul facilement;
- une priorité défendable plutôt qu'une liste;
- un mécanisme causal et un cas économique honnêtes;
- une séquence, une Stop List et une prochaine décision exécutables;
- assez de clarté pour agir avec son équipe ou un tiers;
- une réduction de risque, de temps perdu ou d'indécision proportionnelle au
  prix.

Pour chaque point, donne : démontré, partiellement démontré ou non démontré,
avec preuve.

### Test de transférabilité

Une personne qui n'a pas conçu le kit peut-elle initialiser un mandat, mener
les étapes, savoir quoi demander à l'agent, gérer une porte échouée, protéger
les données et produire un Dossier défendable sans Nath? Ne confonds pas une
procédure écrite avec une preuve de transfert réelle.

### Test du livrable final

Vérifie notamment : décision avant détail, lisibilité, cohérence visuelle,
traçabilité, densité, absence de jargon inutile, portabilité, distinction entre
faits et hypothèses, limites, Stop List, conditions et prochaine décision.

## Synthèse finale commune

Termine par un rapport consolidé comprenant :

1. **Verdict de maturité** : non testable, testable avec supervision, prêt pour
   un client réel supervisé, prêt client sans supervision, ou transférable;
2. **Tableau de notes sur 100** : fidélité à l'offre, valeur réelle, qualité de
   preuve, orchestration, expérience client, livrable, confidentialité et
   contrats, transférabilité. Une moyenne ne doit jamais masquer un blocage;
3. **Bons coups majeurs** et pourquoi ils créent de la valeur;
4. **Mauvais coups majeurs** et leur conséquence concrète;
5. **À surveiller** lors du premier vrai mandat;
6. **Blocages avant le premier client payant**;
7. **V1 minimale réellement vendable à 3 500 $ et plus** : ce qu'elle doit
   absolument contenir et prouver;
8. **Plan classé** : à faire par l'agent seul, à travailler avec Nath et
   Antoine, à obtenir de Nath, et à confier à un professionnel;
9. **Ce qu'il faut arrêter, enlever ou ne pas construire maintenant**;
10. **Cinq prochains tests** qui produiraient le plus de vérité;
11. **Feuille de route 30 jours**, séquencée par dépendances et décisions, sans
    inventer de dates;
12. **Questions de décision restantes**, regroupées et formulées clairement
    pour Nath et Antoine.

Pour chaque recommandation, donne son effet attendu sur au moins un de ces
axes : valeur client, fiabilité, vitesse, risque, transférabilité. Classe-la
`bloquante`, `élevée`, `moyenne` ou `faible`.

## Ton attendu

Sois direct, exigeant, factuel et exhaustif. Ne cherche ni à rassurer ni à
démolir. Ne félicite pas le volume de travail. Reconnais les bons choix quand
ils sont prouvés. Si deux spécialistes sont en désaccord, conserve le
désaccord et explique la décision à prendre. Ne propose aucun nouveau document
sans préciser le problème concret qu'il résout. Ta conclusion doit aider Nath
et Antoine à décider quoi faire ensuite, pas seulement à admirer l'analyse.

Rappel final : **tu ne modifies absolument rien dans le dépôt**.

---
