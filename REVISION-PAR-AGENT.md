# Mandat de révision indépendante — Kit Diagnostic RSPIR V1

## À qui s'adresse ce document

Antoine peut remettre ce fichier à ChatGPT, Claude ou Gemini après avoir donné
à l'outil un accès en lecture au dépôt privé. L'agent doit agir comme réviseur
indépendant. Il ne doit ni modifier les fichiers, ni pousser de changement, ni
tenir les fichiers pour vrais simplement parce qu'ils existent.

Pour Claude, utiliser de préférence le mandat approfondi prêt à copier :
[`PROMPT-CLAUDE-REVISION-EXHAUSTIVE.md`](./PROMPT-CLAUDE-REVISION-EXHAUSTIVE.md).

## Connexion au dépôt privé

Avant toute chose, Antoine doit accepter l'invitation GitHub et ouvrir le dépôt
avec le même compte GitHub que celui connecté à l'agent.

### ChatGPT

1. Ouvrir `Paramètres → Applications → GitHub`.
2. Connecter GitHub et autoriser précisément le dépôt
   `nathanielrespire-collab/kit-diagnostic-rspir`.
3. Dans un nouveau chat ou en mode Agent/Recherche approfondie, ajouter GitHub
   comme source et coller le prompt de révision ci-dessous.
4. Si le dépôt privé n'apparaît pas, ouvrir la configuration de l'application
   GitHub et vérifier que ce dépôt est autorisé; l'indexation peut prendre
   quelques minutes.

Documentation officielle :
https://help.openai.com/fr-fr/articles/11145903-connecting-github-to-chatgpt

### Claude

1. Dans un chat, cliquer `+`, puis `Add from GitHub`; ou, dans un Project,
   ajouter GitHub à la connaissance du projet.
2. Autoriser l'application GitHub de Claude pour ce dépôt privé.
3. Sélectionner le dépôt, puis les dossiers indiqués dans l'ordre de lecture.
4. Utiliser `Sync` avant la révision pour lire la version la plus récente.

Documentation officielle :
https://support.anthropic.com/en/articles/10167454-using-the-github-integration

### Gemini

1. Sur ordinateur, ouvrir `gemini.google.com`.
2. Cliquer `Ajouter un fichier → Plus de téléversements → Importer du code`.
3. Entrer l'URL du dépôt ou de sa branche.
4. Lier le compte GitHub qui a accepté l'invitation au dépôt privé.
5. Coller le prompt de révision. Gemini importe un instantané : réimporter le
   dépôt si une nouvelle version est publiée.

Documentation officielle :
https://support.google.com/gemini/answer/16176929?hl=fr

## Ordre de lecture obligatoire

1. `README.md`
2. `SOURCES-OFFICIELLES/OFFRE-FINALE-RSPIR-2026-08-18.pdf`
3. `KIT-DIAGNOSTIC-V1/REFERENCES-RSPIR/REFERENCE-AGENT-DIAGNOSTIC.md`
4. `KIT-DIAGNOSTIC-V1/REFERENCES-RSPIR/RADAR-D01-D31.md`
5. `KIT-DIAGNOSTIC-V1/NOYAU-AGENT.md`
6. `KIT-DIAGNOSTIC-V1/GABARIT-MANDAT/INTERNE-RSPIR/00-CONTROLE/ORCHESTRATION-DES-COMMANDES.yaml`
7. `KIT-DIAGNOSTIC-V1/CONTROLEURS/CONTROLES-DU-DIAGNOSTIC.md`
8. `KIT-DIAGNOSTIC-V1/SOP-INTERNE-UTILISATION-DU-KIT.md`
9. `TEST-COMPLET-ATELIER-BOREAL/00-GUIDE-HUMAIN-DU-TEST.md`
10. le dossier `TEST-COMPLET-ATELIER-BOREAL/INTERNE-RSPIR/90-SOURCES-CLIENT/`
11. `TEST-COMPLET-ATELIER-BOREAL/INTERNE-RSPIR/00-CONTROLE/REGISTRE-ANALYTIQUE.md`
12. les étapes internes `01-DEMARRAGE` à `07-SUIVI`
13. le dossier `TEST-COMPLET-ATELIER-BOREAL/LIVRABLES-CLIENT/`
14. `TEST-COMPLET-ATELIER-BOREAL/INTERNE-RSPIR/00-CONTROLE/RAPPORT-TEST-BOUT-EN-BOUT.md`
15. `CONTRATS-V0.9-A-VALIDER/03-REGISTRE-DOCUMENTS-JURIDIQUES-A-CREER.md`

## Prompt exact à donner à l'agent

> Tu agis comme réviseur indépendant du Kit Diagnostic RSPIR V1. Le dépôt est
> une source à vérifier, pas une preuve automatique de qualité. Lis les fichiers
> dans l'ordre imposé par `REVISION-PAR-AGENT.md`. L'offre finale PDF est
> l'autorité sur la promesse, la portée, le mécanisme, les prix et la garantie.
> Distingue toujours : 1) exigence explicite de l'offre; 2) choix de conception
> proposé par RSPIR; 3) fait fictif propre au test; 4) hypothèse; 5) élément
> contractuel à valider. Vérifie chaque lien important entre une conclusion,
> le registre analytique et la source brute. Ne récompense pas le nombre de
> fichiers. Juge si une autre personne pourrait réellement exécuter le parcours
> et produire une décision défendable sans inventer. Ne modifie rien.
>
> Réponds avec :
> A. verdict global : non testable, testable avec supervision, ou transférable;
> B. blocages avant un vrai client;
> C. écarts élevés, moyens et faibles;
> D. pour chaque écart : fichier, section ou ligne, preuve, conséquence et
> correction précise;
> E. vérification séparée de la fidélité à l'offre, de l'orchestration, de la
> traçabilité, du livrable client, de la protection des données, des contrats et
> de la transférabilité;
> F. liste finale : garder, corriger, retirer;
> G. les cinq tests les plus utiles à exécuter ensuite.
>
> Contraintes : ne présume aucun réglage de compte; ne transforme pas les 31
> dimensions en audit exhaustif; ne confonds pas un score avec une preuve;
> n'accepte aucun chiffre sans source et date; ne considère pas les validations
> fictives comme des validations réelles; ne recommande pas de publier le dépôt;
> signale toute contradiction avec l'offre finale avant toute préférence de
> style.

## Questions de révision auxquelles l'agent doit répondre

### Fidélité à l'offre

- Les quinze étapes sont-elles toutes représentées dans le bon ordre?
- Les 31 dimensions servent-elles seulement de radar?
- Un seul périmètre vertical est-il approfondi?
- Les douze sections, la Stop List, les neuf questions de valeur et les sept
  critères de garantie sont-ils présents et cohérents?
- La frontière entre Diagnostic et phase 2 est-elle protégée?

### Orchestration

- Chaque commande nomme-t-elle ses entrées, sorties, contrôles et porte?
- Une commande peut-elle être exécutée sans lancer silencieusement la suivante?
- Les validations humaines sont-elles distinguées du jugement de l'agent?
- Un chemin invalide ou une entrée manquante arrête-t-il réellement le parcours?
- Un brouillon interne peut-il se retrouver par erreur dans les livrables?

### Preuve et test fictif

- Chaque conclusion importante remonte-t-elle à une source ou à une inconnue?
- Les contradictions sont-elles conservées et traitées honnêtement?
- Les chiffres économiques évitent-ils une promesse de rendement?
- Les validations fictives sont-elles clairement étiquetées?
- Le test couvre-t-il les cas difficiles qu'il prétend couvrir?

### Expérience client et livrable

- Le dirigeant comprend-il la prochaine décision avant le détail?
- Le Dossier est-il portable sans explication orale de RSPIR?
- Le livrable respecte-t-il la marque sans sacrifier la preuve?
- La participation demandée au client demeure-t-elle proportionnelle?

### Contrats et données

- Les contrats reflètent-ils correctement la portée, la garantie et les
  exclusions de l'offre?
- Les champs non confirmés demeurent-ils visibles?
- Les outils, lieux, durées et mécanismes de suppression sont-ils vérifiables?
- Le consentement à l'enregistrement peut-il être prouvé?
- Les contrats V0.9 sont-ils clairement non signables avant validation?

### Transférabilité

- Une personne qui n'a pas conçu le kit peut-elle initialiser un mandat?
- Sait-elle quoi demander à l'agent à chaque étape?
- Sait-elle quoi faire lorsqu'une porte échoue?
- Les fichiers internes et clients restent-ils séparés jusqu'à la fin?
- Quelle preuve réelle manque pour déclarer le kit transférable?

## Résultat attendu d'Antoine

Antoine peut transmettre la réponse complète de son agent à Nath. Les désaccords
doivent être tranchés contre l'offre finale et les sources du test, pas par vote
entre agents.
