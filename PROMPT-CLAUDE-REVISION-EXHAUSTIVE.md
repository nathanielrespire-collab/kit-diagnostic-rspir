# Prompt Claude — révision indépendante du Kit Diagnostic RSPIR V1

Ce mandat est conçu pour Fable 5 dans Cowork, en lecture seule. Il vise un
rapport complet sans multiplier les lectures, les sous-agents ou les
répétitions.

---

Tu agis comme un **comité indépendant de sept spécialistes**. Ta seule mission
est d'évaluer si le Diagnostic RSPIR produit une décision utile, défendable et
transférable qui justifie réellement 3 500 $ et plus pour un dirigeant de PME.

## 1. Mode d'exécution obligatoire

- Travaille strictement en lecture seule.
- Ne crée, ne modifie, ne renomme et ne supprime aucun fichier.
- Aucun commit, commentaire GitHub, envoi, automatisation ou action externe.
- Aucun sous-agent, aucune recherche web, aucun code et aucun test exécuté.
- Travaille en une seule passe et remets une seule réponse finale.
- Ne produis pas de compte rendu intermédiaire et ne t'arrête pas après le mémo
  de l'offre.
- Lis chaque preuve une fois; utilise ensuite un registre de preuves commun.
- Ne reproduis pas de longs extraits et ne répète pas le même constat sous
  plusieurs rôles.
- Vise 10 000 à 12 000 mots; maximum absolu de 14 000 mots.

Si une source indispensable est inaccessible, nomme-la et arrête l'analyse. Ne
remplace jamais une donnée manquante par une information plausible.

## 2. Autorité et première lecture

Lis d'abord **au complet** :

`SOURCES-OFFICIELLES/OFFRE-FINALE-RSPIR-2026-08-18.pdf`

Le PDF est l'unique autorité sur la promesse, la valeur, le mécanisme, la
portée, les prix, les exclusions et la garantie. Le TXT voisin sert seulement
à chercher; le PDF prévaut toujours.

La première section du rapport final doit être un **mémo de compréhension de
l'offre**, avec pages du PDF, couvrant :

1. le problème du client, la décision achetée et la valeur promise;
2. le mécanisme et ses quinze étapes;
3. les 31 dimensions comme radar, puis la convergence vers un seul périmètre;
4. les douze sections du Dossier et les neuf questions de valeur;
5. les sept critères de garantie, leurs limites et exclusions;
6. les paliers de prix et ce qui doit soutenir une valeur de 3 500 $ et plus;
7. la frontière entre Diagnostic, implantation et phase 2;
8. les moments de valeur et la part de jugement humain non standardisable.

Écris « absent de l'offre » lorsqu'un élément n'y est pas défini.

## 3. Corpus à examiner ensuite

Lis la V1 active, pas l'historique Git :

1. `README.md`;
2. tout `KIT-DIAGNOSTIC-V1/`, notamment le noyau, la référence agent, le radar,
   l'orchestration YAML, les contrôleurs, la SOP et les modèles;
3. tout `TEST-COMPLET-ATELIER-BOREAL/`, notamment le guide humain, les sources
   fictives, les transcripts, le registre analytique, les étapes internes, le
   rapport de test et les livrables client;
4. le Dossier final en DOCX et en PDF;
5. tout `CONTRATS-V0.9-A-VALIDER/`.

Inspecte chaque fichier actif pour comprendre sa fonction. Approfondis ceux qui
soutiennent une conclusion, une porte, une preuve, une promesse ou un livrable.
Ne récompense jamais le nombre de fichiers.

## 4. Discipline de preuve

Crée un registre de preuves numéroté et cite ses identifiants dans les sept
avis. Chaque preuve doit donner le chemin exact et la page, section ou ligne
disponible.

Étiquette chaque constat :

- **OFFRE** — exigence explicite du PDF maître;
- **CONCEPTION RSPIR** — choix ajouté pour opérationnaliser l'offre;
- **TEST FICTIF** — donnée ou résultat propre à Atelier Boréal;
- **INFÉRENCE** — conclusion non prouvée directement;
- **DÉCISION MANQUANTE** — validation humaine, commerciale, technique ou
  juridique requise.

Une hypothèse reste une hypothèse. Une validation fictive n'est jamais réelle.
Tout chiffre sans source et date est « à vérifier ».

## 5. Les sept avis indépendants

Adopte successivement ces sept perspectives dans le même rapport. Conserve les
désaccords utiles; ne simule pas sept sous-agents.

### 1. Diagnostic organisationnel

Juge la capacité à révéler le vrai blocage de décision, ses causes, les
dépendances humaines, les processus, les systèmes et les conditions de
changement, sans devenir un audit exhaustif ou une liste générique.

### 2. Offre de conseil premium et productisation

Juge la valeur réelle et perçue, la différenciation, les moments de valeur et
la cohérence des paliers. Explique pourquoi un dirigeant paierait — ou ne
paierait pas — 3 500 $, 5 500 $ ou 7 500 $. Repère tout volume sans valeur.

### 3. Architecture d'agents et orchestration fiable

Juge les entrées, sorties, portes humaines, contrôles, arrêts, reprises,
chemins, traçabilité et séparation interne/client. Repère les risques de saut,
d'hallucination, d'écrasement ou de poursuite malgré une entrée manquante.

### 4. Expérience du dirigeant et document de décision

Juge les rencontres et livrables du point de vue d'un PDG occupé. Peut-il
comprendre et utiliser la priorité, le cas économique, les conditions, la Stop
List et la prochaine décision sans explication orale de RSPIR?

### 5. Audit contradictoire de la preuve

Remonte les conclusions aux sources. Cherche contradictions, causalités non
démontrées, estimations déguisées, double comptage, promesses implicites et
recommandations plus certaines que les données.

### 6. Risques, confidentialité et contrats

Sans avis juridique, vérifie la cohérence entre l'offre, le parcours, les
contrats V0.9, les consentements, les outils, les lieux de traitement, la
rétention, la suppression, les sous-traitants et la garantie. Nomme ce qui
exige un avocat du Québec.

### 7. Acheteur sceptique — PDG/CFO de PME

Juge comme quelqu'un qui paie de sa poche. Dis ce qui donne confiance, ce qui
empêche de signer, ce qui serait utilisé lundi matin et ce qui paraît superflu
ou décoratif.

### Format de chaque avis

Chaque spécialiste doit fournir un avis distinct et complet, sans répéter les
preuves déjà consignées :

1. verdict et note de préparation pour un premier client réel;
2. bons coups à conserver;
3. faiblesses, risques et éléments à surveiller;
4. garder, corriger, retirer ou ajouter;
5. trois actions prioritaires classées par valeur, effort et risque;
6. références aux preuves communes.

Donne tous les commentaires qui changent la valeur, la décision, la confiance,
le risque ou la transférabilité. Écarte les préférences de style sans effet.

## 6. Tests transversaux

Après les sept avis, réponds avec preuve :

### Fidélité à l'offre

- Les quinze étapes sont-elles complètes et dans le bon ordre?
- Les 31 dimensions restent-elles un radar menant à un seul périmètre?
- Les douze sections, neuf questions et sept critères sont-ils respectés?
- La frontière de la phase 2 et les exclusions sont-elles protégées?

### Parcours réel

Rejoue le mandat du lead au suivi. Pour chaque étape, résume : entrée,
responsable, action, sortie, contrôle, décision humaine, arrêt et risque. Nomme
toute dépendance qui vit encore dans la tête du concepteur.

### Valeur à 3 500 $ et plus

Classe `démontré`, `partiel` ou `non démontré` : compréhension nouvelle,
priorité défendable, mécanisme causal, cas économique honnête, séquence, Stop
List, prochaine décision, capacité d'agir avec son équipe ou un tiers, et
réduction proportionnelle du risque ou de l'indécision.

### Transférabilité et livrable

Une personne externe peut-elle initialiser et mener le mandat, gérer une porte
échouée, protéger les données et produire un Dossier défendable sans Nath?
Évalue aussi décision avant détail, lisibilité, marque, densité, traçabilité,
faits/hypothèses, limites et portabilité. Une procédure écrite n'est pas une
preuve de transfert.

## 7. Synthèse finale commune

Termine avec :

1. verdict de maturité : non testable, testable avec supervision, prêt pour un
   client réel supervisé, prêt sans supervision, ou transférable;
2. notes sur 100 : fidélité à l'offre, valeur, preuve, orchestration,
   expérience client, livrable, confidentialité/contrats et transférabilité;
3. bons coups, mauvais coups et principaux éléments à surveiller;
4. blocages avant le premier client payant;
5. définition de la V1 minimale réellement vendable à 3 500 $ et plus;
6. plan classé : agent seul, Nath et Antoine, Nath seul, professionnel externe;
7. ce qu'il faut arrêter, enlever ou ne pas construire maintenant;
8. cinq prochains tests produisant le plus de vérité;
9. feuille de route de 30 jours ordonnée par dépendances, sans dates inventées;
10. questions de décision restantes pour Nath et Antoine.

Classe chaque recommandation `bloquante`, `élevée`, `moyenne` ou `faible` et
indique son effet sur la valeur, la fiabilité, la vitesse, le risque ou la
transférabilité. Une moyenne ne doit jamais masquer un blocage.

Sois direct, factuel et exigeant. Ne cherche ni à rassurer ni à démolir. Ne
félicite pas le volume de travail. Ne propose un nouveau document que s'il
résout un problème concret. Ta conclusion doit permettre de décider quoi faire
ensuite.

Rappel : **une seule réponse finale et absolument aucun changement aux
fichiers**.

---
