# SOP interne — Utiliser le kit Diagnostic RSPIR

Version : 0.1  
Public : équipe RSPIR seulement  
But : expliquer quoi faire, quand utiliser chaque fichier, quoi demander à l'agent et ce qui peut devenir un livrable client.

## 1. Principe général

Le kit ne lance pas automatiquement un Diagnostic complet. Une personne RSPIR donne une commande à la fois. L'agent exécute la commande autorisée, met à jour le dossier et s'arrête à la prochaine porte.

Le client vit cinq moments : cadrage, immersion ciblée, convergence, décision et suivi. Les quinze étapes de l'offre sont distribuées autour de ces moments.

## 2. Structure d'un mandat

```text
DIAGNOSTIC-CLIENT-DATE/
├── INTERNE-RSPIR/
│   ├── 00-CONTROLE/
│   ├── 01-DEMARRAGE/
│   ├── 02-CADRAGE/
│   ├── 03-IMMERSION-ET-LECTURE/
│   ├── 04-CONVERGENCE/
│   ├── 05-APPROFONDISSEMENT/
│   ├── 06-DECISION/
│   ├── 07-SUIVI/
│   └── 90-SOURCES-CLIENT/
└── LIVRABLES-CLIENT/
```

`INTERNE-RSPIR` contient tout le travail, y compris les brouillons et transcripts. `LIVRABLES-CLIENT` contient seulement les versions validées et partageables.

## 3. Initialiser un nouveau client

### Action humaine

Exécuter :

```powershell
.\INITIALISER-NOUVEAU-MANDAT.ps1 -Client "Nom du client" -Destination "C:\Dossier\Mandats"
```

### Vérifier

- le nom du client dans le manifeste;
- le lead RSPIR;
- le second regard, s'il est déjà connu;
- la fiche du lead déposée dans `01-DEMARRAGE`;
- aucun mot de passe dans le dossier.

### Prompt initial à l'agent

> Lis le noyau, les références méthodologiques RSPIR, le manifeste et le contrat des commandes. Avant de produire une sortie client, lis aussi les trois fichiers de `REFERENCES-RSPIR/MARQUE-RSPIR/`. Exécute seulement la commande actuellement autorisée. Si une entrée manque, inscris exactement laquelle et arrête-toi. Ne commence pas la commande suivante.

## 4. Règles communes à toutes les commandes

Avant chaque commande, l'agent doit :

1. lire le manifeste;
2. confirmer la commande autorisée;
3. lire le contrat correspondant;
4. déclarer les dossiers qu'il utilisera;
5. vérifier les entrées;
6. exécuter seulement cette commande;
7. mettre à jour le registre analytique;
8. inscrire toute décision réelle au journal;
9. exécuter les contrôles applicables;
10. mettre à jour le manifeste;
11. s'arrêter.

Formule de fin attendue :

```text
COMMANDE EXECUTEE :
ETAPES DE L'OFFRE :
ENTREES UTILISEES :
SORTIES PRODUITES :
CONTROLES :
INCONNUES CRITIQUES :
VALIDATION REQUISE :
PROCHAINE COMMANDE ADMISSIBLE :
RAISON DE L'ARRET :
```

## 5. Démarrage — qualification et complexité

### Étape de l'offre

1. Qualification et complexité.

### Utiliser

- `01-DEMARRAGE/01-QUALIFICATION-ET-COMPLEXITE.md`;
- manifeste;
- registre analytique;
- journal des décisions.

### Prompt exact

> Exécute `qualifier_le_mandat`. À partir de la fiche du lead, évalue les six facteurs de complexité sans inventer les informations absentes. Propose le palier par défaut, les inconnues qui peuvent le changer et une portée diagnostique claire. Prépare la question de validation RSPIR et arrête-toi.

### Validation humaine

RSPIR confirme : Diagnostic approprié, palier, prix et portée. Toute dérogation est inscrite au journal.

### Livrable client

Normalement aucun fichier diagnostique. L'entente ou proposition commerciale est gérée séparément.

## 6. Démarrage — préparation légère

### Étape de l'offre

2. Préparation légère.

### Utiliser

- `01-DEMARRAGE/02-RECHERCHE-PREPARATOIRE.md`;
- `01-DEMARRAGE/03-PREPARATION-CLIENT.md`;
- sources publiques autorisées;
- pièces déjà fournies.

### Prompt exact

> Exécute `preparer_le_cadrage`. Fais une recherche préparatoire légère pour personnaliser la rencontre. Sépare faits, signaux, hypothèses et inconnues. Ne choisis aucune priorité et ne produis aucun score de maturité. Prépare le courriel et le questionnaire minimal, mais ne les envoie pas. Arrête-toi avant toute action externe.

### Validation humaine

Le lead vérifie les demandes au client et retire toute question déjà répondue ou sans effet probable sur la décision.

### Livrable client

Courriel préappel et questionnaire léger validés.

## 7. Cadrage dirigeant

### Étape de l'offre

3. Cadrage. Hypothèse V1 : environ 60 minutes.

### Avant la rencontre

- personnaliser `02-CADRAGE/01-GUIDE-DE-CADRAGE.md`;
- ne pas transformer le guide en questionnaire exhaustif;
- confirmer les participants et la captation du transcript.

### Après la rencontre

Déposer le transcript brut selon le protocole, puis demander :

> Exécute `ingerer_le_cadrage`. Analyse le transcript et les réponses. Distingue déclarations, faits montrés, hypothèses, contradictions, inconnues et décisions. Produis la synthèse de cadrage et le plan minimal de collecte. La synthèse doit clarifier la décision à soutenir sans sélectionner une priorité.

### Validation humaine

Le lead confirme que la question de départ représente bien le mandat.

### Livrable client

Une synthèse courte peut être copiée dans `LIVRABLES-CLIENT/01-CADRAGE` si elle apporte une valeur utile. Elle n'est pas obligatoire.

## 8. Lecture horizontale et préparation de l'immersion

### Étape de l'offre

4. Lecture horizontale.

### Utiliser

- radar D01–D31;
- balayage horizontal;
- plan d'immersion;
- synthèse de cadrage;
- registre analytique.

### Prompt exact

> Exécute `preparer_immersion`. Balaye les 31 dimensions comme un radar. Pour chacune, inscris au maximum le signal utile, sa source et son effet possible sur la priorité. Ne crée pas 31 analyses et n'attribue pas 31 notes. Prépare seulement les rencontres, exemples et artefacts capables de déplacer le périmètre.

### Validation humaine

Le lead autorise les personnes à rencontrer et les demandes d'artefacts.

### Livrable client

Aucun rapport des 31 dimensions.

## 9. Immersion ciblée

### Moment client

Hypothèse V1 : 1 à 3 rencontres de 30 à 45 minutes.

### Avant chaque rencontre

- choisir les hypothèses à tester;
- demander un exemple réel;
- préparer seulement les questions propres au rôle rencontré.

### Après chaque rencontre

> Exécute `analyser_immersion`. Ingère le transcript, les observations et les artefacts. Analyse ce qui se passe réellement, relie les éléments aux dimensions pertinentes et mets à jour les zones candidates. Toute contradiction entre discours et terrain doit rester visible. Arrête-toi lorsque la lecture est suffisante pour comparer, pas lorsque toute l'entreprise est documentée.

### Validation humaine

Le lead décide si une autre immersion peut encore changer la priorité.

### Livrable client

Aucun transcript ni rapport intermédiaire brut.

## 10. Priorisation et convergence

### Étapes de l'offre

5. Priorisation.  
6. Point de convergence.

### Prompt de préparation

> Exécute `preparer_convergence`. Applique d'abord les cinq filtres, puis la grille pondérée officielle. Compare les candidates sans laisser le score remplacer le jugement. Prépare un paquet client montrant les zones importantes, le périmètre pressenti, pourquoi il passe devant et ce qui pourrait encore l'invalider.

### Rencontre

Hypothèse V1 : environ 30 minutes. Ce n'est pas une vente; c'est une validation de direction.

### Prompt après la rencontre

> Exécute `ingerer_convergence`. Ingère le transcript et la décision. Inscris le périmètre validé ou la mesure supplémentaire décidée dans le journal. Mets le manifeste à jour. N'autorise pas l'analyse verticale sans preuve explicite de convergence.

### Livrable client

Copier la version validée dans `LIVRABLES-CLIENT/02-CONVERGENCE`.

## 11. Approfondissement vertical

### Étapes de l'offre

7 à 10 : analyse verticale, cas économique, conditions de préparation et Stop List.

### Prompt exact

> Exécute `approfondir_perimetre` seulement sur le périmètre validé. Réponds aux dix questions de suffisance. Analyse humains, processus, logiciels et IA seulement si pertinente; traite données, sécurité et gouvernance proportionnellement. Produis la cause, les options, le cas économique au niveau permis, les conditions, la séquence et la Stop List. Arrête toute collecte qui sert surtout à construire.

### Validation humaine

Le lead confirme que l'analyse suffit pour décider. Il ne demande pas les détails de phase 2.

### Livrable client

Pas de livrable séparé : les résultats alimentent le Dossier de décision.

## 12. Second regard

### Étape de l'offre

11. Revue interne RSPIR.

### Prompt de préparation

> Exécute `preparer_second_regard`. Assemble un paquet compact contenant priorité, alternatives, preuves, hypothèses fragiles, cause, économie, conditions, séquence et Stop List. Ne défends pas la recommandation; rends-la facile à challenger.

### Travail humain

Le second regard challenge priorité, cause, économie, portée et recommandation. Le lead répond à chaque réserve.

### Livrable client

Aucune note du second regard.

## 13. Dossier de décision

### Étape de l'offre

12. Dossier de décision.

### Prompt exact

> Exécute `assembler_dossier_decision`. Utilise seulement les analyses ayant passé le second regard. Rédige les douze sections, réponds aux neuf questions de valeur et rends le raisonnement portable. N'ajoute aucun contenu pour créer du volume. N'inclus pas l'économie interne, les scores de complexité ou les notes confidentielles.

### Validation humaine

Le lead relit la version client et autorise sa copie dans `LIVRABLES-CLIENT/03-DOSSIER-DE-DECISION`.

### Livrable client

Dossier de décision validé.

## 14. Session de décision

### Étape de l'offre

13. Session de décision. Hypothèse V1 : environ 90 minutes.

### Avant

Préparer le guide de session et le Dossier validé.

### Après

> Exécute `ingerer_session_decision`. Ingère le transcript, les objections, les nouvelles informations et les décisions du client. Distingue les changements justifiés d'une simple préférence. Mets à jour le Dossier et le journal, puis arrête-toi avant le test officiel de garantie.

### Livrable client

Version révisée du Dossier, si la session a changé matériellement le résultat.

## 15. Test de garantie

### Étape de l'offre

14. Test des sept critères, après la session.

### Prompt exact

> Exécute `tester_garantie`. Teste direction, justification, preuve, conditions, économie, séquence et action. Si un critère échoue à cause de l'analyse RSPIR, retourne précisément à l'étape insuffisante. Une décision de mesurer avant d'investir peut être valide. Ne promets aucun rendement futur.

### Validation humaine

RSPIR rend le jugement de garantie.

### Livrable client

La garantie se reflète dans la qualité du Dossier; le contrôle interne n'est pas remis automatiquement.

## 16. Suivi d'appropriation

### Étape de l'offre

15. Suivi. Hypothèse V1 : environ 30 à 45 minutes.

### Prompt de préparation

> Exécute `preparer_suivi`. À partir du Dossier et des questions reçues, prépare une rencontre courte qui vérifie si le dirigeant comprend la logique, peut la partager et sait quelle décision prendre. Sépare toute nouvelle problématique du Diagnostic terminé.

### Après le suivi

> Exécute `fermer_diagnostic`. Ingère les questions et décisions du suivi. Confirme que les sept critères tiennent, finalise les métriques et sépare toute phase de conception. Déclare le Diagnostic terminé seulement si le transfert de compréhension est réel.

### Livrable client

Synthèse de suivi seulement si elle clarifie ou modifie la prochaine décision.

## 17. Ce qui ne va jamais dans les livrables client

- transcripts bruts;
- registre analytique;
- journal interne;
- grille de complexité et prix internes;
- heures et marge RSPIR;
- brouillons;
- notes du second regard;
- contrôles anti-invention ou de garantie;
- informations sensibles inutiles;
- architecture détaillée de phase 2 non vendue.

## 18. Que faire lorsqu'un élément manque

Ne pas improviser. Demander à l'agent :

> Identifie l'information exacte qui manque, la décision qu'elle peut changer, son détenteur et le moyen minimal de la réduire. Indique ce qui peut avancer sans elle et arrête-toi.

## 19. Que faire lorsqu'une demande dépasse la portée

Demander :

> Applique le contrôle de portée. Si l'information sert surtout à construire une décision déjà établie, inscris-la comme phase suivante avec la justification et n'exécute pas le travail.

## 20. Que faire avant tout partage client

Relire `REFERENCES-RSPIR/MARQUE-RSPIR/01-RSPIR-ESSENCE-DE-MARQUE.md` et `02-RSPIR-SYSTEME-VISUEL-PREMIUM.md`. Vérifier le ton, la palette, la typographie, la hiérarchie, l'espace, les graphiques et l'absence de symbole inventé. La conformité de marque ne remplace jamais les contrôles de fond.

1. vérifier que le fichier vient de `LIVRABLES-CLIENT`;
2. exécuter anti-invention, preuve, confidentialité, portée et portabilité;
3. obtenir la validation humaine;
4. créer le brouillon d'envoi, jamais l'envoyer automatiquement;
5. conserver la version remise et sa date.
