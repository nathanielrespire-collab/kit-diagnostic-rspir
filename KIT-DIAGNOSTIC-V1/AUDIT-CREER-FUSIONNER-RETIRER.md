# Audit du kit — créer, fusionner, retirer

Date : 2026-08-20  
Base : offre finale TXT et fichiers présents dans `work/KIT-DIAGNOSTIC-V1/`

Mise à jour : reconstruction exécutée. Les brouillons remplacés ont été déplacés dans `ARCHIVE-CONCEPTION/2026-08-20-architecture-precedente/`. Le registre analytique actif est présentement en Markdown structuré; il pourra être converti en tableur lorsque ce format apportera un gain réel.

## 1. Verdict général

Le contenu créé jusqu'ici contient de bonnes règles, mais l'architecture est devenue trop documentaire. Trois registres séparés, un état manuel et un maître de près de 500 lignes répètent plusieurs champs et imposeraient trop de maintenance.

La cible doit devenir :

- une référence d'offre condensée;
- un noyau d'agent court;
- un manifeste propre au mandat;
- un registre analytique central;
- un journal append-only des décisions;
- des contrôleurs spécialisés;
- des gabarits rangés selon le parcours client;
- des livrables séparés de l'interne.

## 2. Audit des fichiers déjà créés

| Fichier | Verdict | Raisons | Destination recommandée |
|---|---|---|---|
| `00-MAITRE-DU-DIAGNOSTIC.md` | fusionner puis retirer de l'usage actif | Bonne doctrine, mais trop long; mélange offre, orchestration et guides d'étapes | Extraire les règles permanentes dans `NOYAU-AGENT.md`; transférer le contenu d'offre dans la nouvelle référence; transférer les étapes dans le manifeste et les guides |
| `01-ETAT-DU-DOSSIER.md` | remplacer | Trop de champs manuels et duplication avec registres/journal; risque de divergence | Générer une vue courte depuis le manifeste et le registre analytique |
| `02-REGISTRE-DES-SOURCES.md` | fusionner | Bonne traçabilité, mais répète statut, décision affectée et limites | Onglet ou table `sources` du registre analytique |
| `03-REGISTRE-DES-PREUVES.md` | fusionner | Cœur analytique utile; plusieurs vues peuvent être générées | Table principale du registre analytique |
| `04-REGISTRE-DES-INCONNUES.md` | fusionner | Bonne logique de matérialité, mais répète preuves, statut et décision | Vue filtrée `inconnues` du registre analytique |
| `05-JOURNAL-DES-DECISIONS.md` | conserver et raccourcir | Fonction distincte, append-only, nécessaire pour les arbitrages | Conserver comme fichier autonome après simplification |
| `PLAN-ARBORESCENCE-ALIGNEE-PARCOURS-CLIENT.md` | archivé | Bonne décision de conception, mais ses chemins étaient antérieurs au gabarit actif | `ARCHIVE-CONCEPTION/2026-08-20-architecture-precedente/` |
| `REFERENCE-AGENT-DIAGNOSTIC.md` | conserver | Devient la référence condensée de l'offre pour l'agent | `REFERENCES-RSPIR/` |

## 3. Ce qui devrait être retiré

Ne rien supprimer immédiatement. Après consolidation et vérification, déplacer dans une archive de conception :

- l'ancien fichier maître;
- l'ancien état du dossier;
- les trois registres séparés;
- le plan maître antérieur de 543 lignes, une fois les décisions utiles transférées.

Motif : ces fichiers sont utiles comme historique de conception, mais ne doivent pas être copiés dans chaque mandat client.

Le journal des décisions et le plan d'arborescence restent actifs. Aucune suppression ne doit avoir lieu avant vérification que chaque règle utile a une destination.

## 4. Ce que je peux créer seul à partir de l'offre finale

### Fondation et orchestration

- référence condensée de l'offre;
- noyau court de l'agent;
- manifeste de mandat;
- initialisateur d'un nouveau dossier client;
- arborescence `INTERNE-RSPIR` et `LIVRABLES-CLIENT`;
- registre analytique central;
- journal de décisions simplifié;
- état du mandat généré;
- contrôle de portée;
- métriques des dix premiers Diagnostics;
- règles de rangement et ingestion des transcripts.

### Démarrage et cadrage

- fiche du lead;
- grille de complexité à six facteurs;
- décision d'acceptation et portée;
- critères et plan de recherche préparatoire;
- dossier factuel client;
- courriel préappel;
- questionnaire préparatoire léger;
- guide de cadrage;
- synthèse de cadrage;
- analyse structurée d'un transcript.

### Lecture, priorisation et convergence

- matrice horizontale vide reliée aux 31 dimensions;
- test de pertinence;
- plan d'immersion;
- guides d'entretiens ciblés;
- cinq filtres de candidature;
- grille comparative pondérée;
- note de jugement;
- paquet et guide de convergence;
- décision de périmètre.

### Approfondissement

- guide des dix questions de suffisance;
- analyses humains, processus, logiciels, IA, données, sécurité et gouvernance;
- carte du flux réel;
- cause et mécanisme;
- options d'intervention;
- cas économique A/B/C;
- conditions de préparation;
- séquence;
- Stop List;
- contrôle des neuf risques IA.

### Décision, contrôle et suivi

- paquet du second regard;
- protocole de revue;
- Dossier de décision en douze sections;
- guide de session de décision;
- test des neuf questions de valeur;
- test des sept critères de garantie;
- contrôle anti-invention;
- contrôle des contradictions;
- contrôle de portabilité;
- guide de suivi d'appropriation;
- fermeture ou passage séparé vers la phase 2;
- dossiers simulés et scénarios de test.

## 5. Ce que je ne peux pas créer honnêtement à partir de cette source seule

### Liste D01 à D31

L'offre définit leur rôle, mais ne les énumère pas. Je peux créer le contenant et les règles, pas les 31 dimensions elles-mêmes sans une source additionnelle ou une décision de Nath.

### Politique d'accès et de confidentialité

Je peux proposer une politique, mais l'offre ne décide pas quels outils, comptes, données sensibles, durées de conservation et usages de modèles sont autorisés.

### Intégrations techniques réelles

Je peux préparer l'architecture et les contrats d'entrée, mais les connexions Fireflies, Drive, CRM ou autres exigent les outils, autorisations et formats réels.

### Identité du second regard

Je peux définir le rôle et le protocole, pas désigner la personne.

### Noms et formats commerciaux finaux

Le nom final de la garantie et du Dossier, le design et le copy commercial ne sont pas tranchés dans l'offre.

## 6. Nouvelle architecture active recommandée

```text
GABARIT-DIAGNOSTIC/
├── REFERENCES-RSPIR/
│   └── REFERENCE-AGENT-DIAGNOSTIC.md
├── NOYAU-AGENT.md
├── INITIALISER-NOUVEAU-MANDAT.ps1
├── GABARIT-MANDAT/
│   ├── INTERNE-RSPIR/
│   │   ├── 00-CONTROLE/
│   │   ├── 01-DEMARRAGE/
│   │   ├── 02-CADRAGE/
│   │   ├── 03-IMMERSION-ET-LECTURE/
│   │   ├── 04-CONVERGENCE/
│   │   ├── 05-APPROFONDISSEMENT/
│   │   ├── 06-DECISION/
│   │   └── 07-SUIVI/
│   └── LIVRABLES-CLIENT/
│       ├── 01-CADRAGE/
│       ├── 02-CONVERGENCE/
│       ├── 03-DOSSIER-DE-DECISION/
│       └── 04-SUIVI/
└── ARCHIVE-CONCEPTION/
```

## 7. Ordre concret de reconstruction

1. Valider le présent audit et la séparation interne/client.
2. Créer le noyau court de l'agent.
3. Créer le manifeste et le registre analytique central.
4. Créer l'initialisateur de mandat et tester l'arborescence.
5. Transférer les bonnes règles des cinq brouillons de pilotage.
6. Archiver les fichiers remplacés; ne rien supprimer définitivement.
7. Construire les gabarits du cadrage.
8. Construire immersion et convergence.
9. Construire approfondissement, décision et suivi.
10. Ajouter les contrôleurs et scénarios de test.
11. Obtenir ou décider D01 à D31.
12. Lancer un pilote réel et retirer tout fichier qui ne change pas une décision, ne protège pas la qualité ou ne transfère pas la compréhension.

## 8. Recommandation immédiate — exécutée

L'ancien `06-CONTROLE-DE-PORTEE.md` n'a pas été créé.

`NOYAU-AGENT.md`, le manifeste, le registre analytique et l'initialisateur sont maintenant construits. La prochaine étape réelle est un essai contrôlé sur un dossier simulé complet, puis un pilote réel.
