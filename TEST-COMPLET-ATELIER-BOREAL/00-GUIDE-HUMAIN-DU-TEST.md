# Guide humain du test complet — Atelier Boréal Distribution inc.

## Pourquoi ce dossier existe

Ce dossier démontre, avec une entreprise entièrement fictive, comment le kit
Diagnostic RSPIR transforme une demande initiale en décision exploitable. Il
permet de vérifier l'organisation, la méthode, les portes humaines, les sources,
les contrats et les livrables sans utiliser les renseignements d'un vrai client.

**Important :** aucune société n'a été constituée et aucun représentant réel n'a
été créé. « Atelier Boréal Distribution inc. », ses quatre représentants, ses
chiffres et ses rencontres sont des données de simulation. L'entité légale qui
signera les futurs contrats RSPIR demeure à confirmer.

## Lecture rapide en cinq fichiers

1. [Déclaration de fiction](./INTERNE-RSPIR/90-SOURCES-CLIENT/00-FICTION-ET-INTEGRITE.md) — ce qui a été inventé et pourquoi.
2. [Rapport du test](./INTERNE-RSPIR/00-CONTROLE/RAPPORT-TEST-BOUT-EN-BOUT.md) — ce qui a fonctionné, les défauts trouvés et les limites.
3. [Registre analytique](./INTERNE-RSPIR/00-CONTROLE/REGISTRE-ANALYTIQUE.md) — la chaîne entre chaque énoncé, sa source et la décision influencée.
4. [Dossier de décision client](./LIVRABLES-CLIENT/03-DOSSIER-DE-DECISION/DOSSIER-DE-DECISION.md) — le résultat final en texte.
5. [Constat de fin](./INTERNE-RSPIR/07-SUIVI/03-CONSTAT-FIN-GARANTIE-TEST.md) — pourquoi le Diagnostic peut être fermé.

## Ce qui a été créé au départ

Le scénario part d'une entreprise fictive de distribution B2B de 32 employés.
Quatre personnes fictives ont reçu des perspectives différentes :

- Sophie Tremblay, PDG : veut décider si elle achète un CRM et une IA;
- Marc Gagnon, opérations : voit surtout des entrées incomplètes et des versions;
- Léa Bouchard, service client : voit la différence entre demandes simples et complexes;
- Émile Roy, contrôle : fournit les volumes et un coût horaire fictifs.

La contradiction entre la perception de Sophie et l'expérience de Léa est
intentionnelle. Elle teste si le Diagnostic conserve une divergence au lieu de
fabriquer une moyenne ou de valider trop vite la solution demandée.

Les sources brutes fictives sont regroupées dans
[90-SOURCES-CLIENT](./INTERNE-RSPIR/90-SOURCES-CLIENT/). Elles ne sont jamais
mélangées aux règles générales du kit ni remises au client.

## Ce qui s'est passé, dans l'ordre

### 0. Initialisation et règles du mandat

Le gabarit a créé deux zones : `INTERNE-RSPIR`, qui contient les sources,
analyses et contrôles, et `LIVRABLES-CLIENT`, qui ne reçoit que les sorties
validées. Le [manifeste](./INTERNE-RSPIR/00-CONTROLE/MANIFESTE-DU-MANDAT.yaml)
a été ouvert à l'étape 1, puis avancé une commande à la fois jusqu'à l'étape 15.
La [configuration des données](./INTERNE-RSPIR/00-CONTROLE/CONFIGURATION-DONNEES-ET-OUTILS.md)
a fixé la pile candidate, les exclusions et une conservation de test de 90 jours.

### 1. Création du lead et qualification

La [fiche du lead](./INTERNE-RSPIR/90-SOURCES-CLIENT/01-FICHE-DU-LEAD.md) et les
[réponses préappel](./INTERNE-RSPIR/90-SOURCES-CLIENT/02-REPONSES-PREAPPEL.md)
ont servi d'entrées. La grille de complexité a donné 6/12, donc un palier
Élargi simulé. La sélection détaillée d'un CRM, son architecture et son
implantation ont été exclues dès ce moment.

### 2. Recherche préparatoire

Il n'y a pas eu de recherche Web sur une vraie entreprise, puisque le client
n'existe pas. Le test a plutôt vérifié la méthode de recherche légère : partir
des faits fournis, séparer les signaux des conclusions, nommer les inconnues et
ne conserver que les questions pouvant changer le périmètre ou la décision.

La sortie se trouve dans
[Recherche préparatoire légère](./INTERNE-RSPIR/01-DEMARRAGE/02-RECHERCHE-PREPARATOIRE.md).
Elle n'établit aucune priorité. Elle prépare seulement les questions du cadrage.

### 3. Préparation et cadrage

Un courriel, un questionnaire minimal et un guide de rencontre ont été préparés,
mais aucun message réel n'a été envoyé. Le
[transcript de cadrage](./INTERNE-RSPIR/90-SOURCES-CLIENT/03-TRANSCRIPT-CADRAGE.txt)
a ensuite confirmé la vraie question : quel changement doit passer en premier
pour réduire les délais sans acheter prématurément une solution?

La [synthèse interne](./INTERNE-RSPIR/02-CADRAGE/02-SYNTHESE-DE-CADRAGE.md)
a autorisé seulement deux immersions et un export existant. Une version courte a
été placée dans les [livrables client](./LIVRABLES-CLIENT/01-CADRAGE/SYNTHESE-DE-CADRAGE.md).

### 4. Immersion et lecture horizontale

Les 31 dimensions ont servi de radar, jamais de liste de 31 audits. Le balayage
a retenu seulement les signaux capables de déplacer la priorité. Deux rencontres
fictives ont été analysées : opérations et service client. Un export fictif de
220 demandes a ajouté une preuve chiffrée, mais sa couverture incomplète est
restée visible.

Cette phase a produit trois candidates : le flux de soumission, la visibilité
stock-produit et l'acquisition commerciale. L'assistant IA autonome a été écarté
faute de preuve et parce qu'une validation humaine demeurait nécessaire.

### 5. Comparaison et convergence

Les candidates ont passé les cinq filtres, puis la grille pondérée officielle.
Le flux demande-soumission-commande a obtenu 82/100, devant stock-produit à
63/100 et acquisition commerciale à 60/100. Les scores sont demeurés des aides
au jugement, pas des preuves causales.

Le [transcript de convergence](./INTERNE-RSPIR/90-SOURCES-CLIENT/07-TRANSCRIPT-CONVERGENCE.txt)
a simulé la validation explicite d'un seul périmètre vertical. La sortie client
est [Convergence validée](./LIVRABLES-CLIENT/02-CONVERGENCE/CONVERGENCE-VALIDEE.md).

### 6. Approfondissement du périmètre retenu

L'analyse a reconstruit le flux réel, séparé les faits des hypothèses, comparé
trois options et calculé un cas économique de niveau B. Le scénario touche
88,5 heures et 3 363 $ par mois, mais ces montants ne sont ni une économie
promise ni un ROI. La fréquence réelle des reprises est restée inconnue.

La recommandation est donc de stabiliser le flux et de mesurer pendant quatre
semaines. La Stop List interdit l'achat, la configuration, la migration et un
pilote IA avant que les exigences soient démontrées.

### 7. Second regard et création du Dossier

Le second regard a contesté le calcul, la précision du score, le cas unique de
mauvaise version, le seuil de 15 % et le risque que la recommandation ressemble
à de l'attente. Les réponses ont été intégrées avant la production client.

Le Dossier interne a été assemblé selon les douze sections de l'offre, puis mis
en page selon la marque RSPIR. Le résultat existe en
[Markdown](./LIVRABLES-CLIENT/03-DOSSIER-DE-DECISION/DOSSIER-DE-DECISION.md),
[Word](./LIVRABLES-CLIENT/03-DOSSIER-DE-DECISION/DOSSIER-DE-DECISION-ATELIER-BOREAL-TEST.docx)
et [PDF](./LIVRABLES-CLIENT/03-DOSSIER-DE-DECISION/DOSSIER-DE-DECISION-ATELIER-BOREAL-TEST.pdf).

### 8. Session de décision et garantie

La session fictive a transformé la recommandation en décision possédée par le
client : Marc et Léa exécutent le test; le seuil de 15 % est un choix du client,
pas une norme RSPIR. Le Dossier a été ajusté après la session. Ensuite seulement,
les sept critères de garantie ont été testés et déclarés satisfaits.

### 9. Suivi, changement de portée et fermeture

Deux semaines fictives plus tard, le client pouvait expliquer la logique sans
RSPIR. Une nouvelle demande — comparer trois CRM — a été classée en phase 2 et
consignée dans un bon de modification plutôt que d'être absorbée gratuitement.
Le Diagnostic a alors été fermé en simulation.

## Comment vérifier une conclusion

Pour auditer une affirmation du Dossier :

1. la retrouver dans le [registre analytique](./INTERNE-RSPIR/00-CONTROLE/REGISTRE-ANALYTIQUE.md);
2. suivre le fichier source et l'horodatage indiqués;
3. vérifier la décision correspondante dans le [journal](./INTERNE-RSPIR/00-CONTROLE/JOURNAL-DES-DECISIONS.md);
4. vérifier la portée et les limites dans le [contrôle de portée](./INTERNE-RSPIR/00-CONTROLE/CONTROLE-DE-PORTEE.md);
5. vérifier le résultat final dans le [test de garantie](./INTERNE-RSPIR/06-DECISION/04-TEST-DE-GARANTIE.md).

## Inventaire commenté de tous les fichiers du test

### Racine

- [README.md](./README.md) — porte d'entrée courte du mandat fictif.

### 00-CONTROLE — règles, état et traçabilité

- [CONFIGURATION-DONNEES-ET-OUTILS.md](./INTERNE-RSPIR/00-CONTROLE/CONFIGURATION-DONNEES-ET-OUTILS.md) — outils candidats, lieux, exclusions et conservation.
- [CONTROLE-DE-PORTEE.md](./INTERNE-RSPIR/00-CONTROLE/CONTROLE-DE-PORTEE.md) — inclus, exclu et frontière de phase 2.
- [CONTROLES-DU-DIAGNOSTIC.md](./INTERNE-RSPIR/00-CONTROLE/CONTROLES-DU-DIAGNOSTIC.md) — onze familles de contrôles qualité.
- [JOURNAL-DES-DECISIONS.md](./INTERNE-RSPIR/00-CONTROLE/JOURNAL-DES-DECISIONS.md) — les cinq décisions qui ont fait avancer le mandat.
- [MANIFESTE-DU-MANDAT.yaml](./INTERNE-RSPIR/00-CONTROLE/MANIFESTE-DU-MANDAT.yaml) — état final lisible par l'agent.
- [METRIQUES-INTERNES.md](./INTERNE-RSPIR/00-CONTROLE/METRIQUES-INTERNES.md) — couverture des étapes, portes, rencontres et sorties.
- [NOYAU-AGENT.md](./INTERNE-RSPIR/00-CONTROLE/NOYAU-AGENT.md) — mission, boucle et arrêts obligatoires de l'agent.
- [ORCHESTRATION-DES-COMMANDES.yaml](./INTERNE-RSPIR/00-CONTROLE/ORCHESTRATION-DES-COMMANDES.yaml) — entrées, sorties, contrôles et porte de chacune des 15 commandes.
- [PROTOCOLE-TRANSCRIPTS.md](./INTERNE-RSPIR/00-CONTROLE/PROTOCOLE-TRANSCRIPTS.md) — règle de conservation du brut et d'extraction des réponses.
- [RAPPORT-TEST-BOUT-EN-BOUT.md](./INTERNE-RSPIR/00-CONTROLE/RAPPORT-TEST-BOUT-EN-BOUT.md) — verdict, scénarios testés, défauts et corrections.
- [REGISTRE-ANALYTIQUE.md](./INTERNE-RSPIR/00-CONTROLE/REGISTRE-ANALYTIQUE.md) — faits, déclarations, contradictions, inconnues et recommandations reliés aux sources.

### Références embarquées

- [REFERENCE-AGENT-DIAGNOSTIC.md](./INTERNE-RSPIR/00-CONTROLE/REFERENCES-RSPIR/REFERENCE-AGENT-DIAGNOSTIC.md) — version opérationnelle de la portion Diagnostic de l'offre finale.
- [RADAR-D01-D31.md](./INTERNE-RSPIR/00-CONTROLE/REFERENCES-RSPIR/RADAR-D01-D31.md) — les 31 dimensions et la règle « radar, pas audit ».
- [README de marque](./INTERNE-RSPIR/00-CONTROLE/REFERENCES-RSPIR/MARQUE-RSPIR/README.md) — autorité et ordre de lecture de la marque.
- [Essence de marque](./INTERNE-RSPIR/00-CONTROLE/REFERENCES-RSPIR/MARQUE-RSPIR/01-RSPIR-ESSENCE-DE-MARQUE.md) — posture, ton et impression recherchée.
- [Système visuel](./INTERNE-RSPIR/00-CONTROLE/REFERENCES-RSPIR/MARQUE-RSPIR/02-RSPIR-SYSTEME-VISUEL-PREMIUM.md) — couleurs, typographies, hiérarchie et règles graphiques.

### 01-DEMARRAGE — qualification, recherche et contrats

- [01-QUALIFICATION-ET-COMPLEXITE.md](./INTERNE-RSPIR/01-DEMARRAGE/01-QUALIFICATION-ET-COMPLEXITE.md) — score 6/12, palier Élargi et exclusions.
- [02-RECHERCHE-PREPARATOIRE.md](./INTERNE-RSPIR/01-DEMARRAGE/02-RECHERCHE-PREPARATOIRE.md) — faits connus, signaux et questions utiles avant la rencontre.
- [03-PREPARATION-CLIENT.md](./INTERNE-RSPIR/01-DEMARRAGE/03-PREPARATION-CLIENT.md) — courriel et questionnaire préparés, jamais envoyés.
- [ANNEXE-TRAITEMENT-REMPLIE-TEST.md](./INTERNE-RSPIR/01-DEMARRAGE/CONTRATS-TEST/ANNEXE-TRAITEMENT-REMPLIE-TEST.md) — fournisseurs, finalités, lieux et durées simulés.
- [REGISTRE-CONSENTEMENTS-TEST.md](./INTERNE-RSPIR/01-DEMARRAGE/CONTRATS-TEST/REGISTRE-CONSENTEMENTS-TEST.md) — consentements fictifs reliés aux transcripts.
- [REGISTRE-CONTRACTUEL-TEST.md](./INTERNE-RSPIR/01-DEMARRAGE/CONTRATS-TEST/REGISTRE-CONTRACTUEL-TEST.md) — état des six documents contractuels testés et limites.

### 02-CADRAGE

- [01-GUIDE-DE-CADRAGE.md](./INTERNE-RSPIR/02-CADRAGE/01-GUIDE-DE-CADRAGE.md) — déroulé et questions de la première rencontre.
- [02-SYNTHESE-DE-CADRAGE.md](./INTERNE-RSPIR/02-CADRAGE/02-SYNTHESE-DE-CADRAGE.md) — question confirmée, contradiction et collecte autorisée.

### 03-IMMERSION-ET-LECTURE

- [01-BALAYAGE-D01-D31.md](./INTERNE-RSPIR/03-IMMERSION-ET-LECTURE/01-BALAYAGE-D01-D31.md) — signaux retenus après le radar horizontal.
- [02-PLAN-D-IMMERSION.md](./INTERNE-RSPIR/03-IMMERSION-ET-LECTURE/02-PLAN-D-IMMERSION.md) — personnes, hypothèses, exemples et preuves d'invalidation.
- [03-ANALYSE-DE-RENCONTRE.md](./INTERNE-RSPIR/03-IMMERSION-ET-LECTURE/03-ANALYSE-DE-RENCONTRE.md) — faits, concordances, contradiction et seuil de suffisance.

### 04-CONVERGENCE

- [01-FILTRES-ET-COMPARAISON.md](./INTERNE-RSPIR/04-CONVERGENCE/01-FILTRES-ET-COMPARAISON.md) — cinq filtres, scores pondérés et jugement.
- [02-PAQUET-DE-CONVERGENCE.md](./INTERNE-RSPIR/04-CONVERGENCE/02-PAQUET-DE-CONVERGENCE.md) — proposition de périmètre et condition d'invalidation.

### 05-APPROFONDISSEMENT

- [01-DIX-QUESTIONS-DE-SUFFISANCE.md](./INTERNE-RSPIR/05-APPROFONDISSEMENT/01-DIX-QUESTIONS-DE-SUFFISANCE.md) — test de suffisance pour décider sans construire.
- [02-PYRAMIDE-ET-FLUX-REEL.md](./INTERNE-RSPIR/05-APPROFONDISSEMENT/02-PYRAMIDE-ET-FLUX-REEL.md) — résultat, flux observé, ruptures et frontière.
- [03-CAUSE-OPTIONS-ET-RISQUES.md](./INTERNE-RSPIR/05-APPROFONDISSEMENT/03-CAUSE-OPTIONS-ET-RISQUES.md) — mécanisme causal, trois options et risques IA.
- [04-CAS-ECONOMIQUE.md](./INTERNE-RSPIR/05-APPROFONDISSEMENT/04-CAS-ECONOMIQUE.md) — calcul transparent, hypothèses et limites.
- [05-CONDITIONS-SEQUENCE-STOP-LIST.md](./INTERNE-RSPIR/05-APPROFONDISSEMENT/05-CONDITIONS-SEQUENCE-STOP-LIST.md) — préparation, ordre d'action et interdictions.

### 06-DECISION

- [01-SECOND-REGARD.md](./INTERNE-RSPIR/06-DECISION/01-SECOND-REGARD.md) — cinq réserves indépendantes et leurs réponses.
- [02-DOSSIER-DE-DECISION.md](./INTERNE-RSPIR/06-DECISION/02-DOSSIER-DE-DECISION.md) — version interne des douze sections après la session.
- [03-GUIDE-DE-SESSION.md](./INTERNE-RSPIR/06-DECISION/03-GUIDE-DE-SESSION.md) — déroulé, objections et question finale de décision.
- [04-TEST-DE-GARANTIE.md](./INTERNE-RSPIR/06-DECISION/04-TEST-DE-GARANTIE.md) — vérification officielle des sept critères après la session.
- [05-CONTRAT-DU-DOSSIER-V1.md](./INTERNE-RSPIR/06-DECISION/05-CONTRAT-DU-DOSSIER-V1.md) — architecture, densité et règles de sortie du livrable.
- [06-PROMPT-ASSEMBLAGE-DOSSIER-V1.md](./INTERNE-RSPIR/06-DECISION/06-PROMPT-ASSEMBLAGE-DOSSIER-V1.md) — directive complète donnée à l'agent pour assembler le Dossier.
- [MODELE-DOSSIER-RSPIR-V1.docx](./INTERNE-RSPIR/06-DECISION/MODELE-DOSSIER-RSPIR-V1.docx) — modèle Word interne vide servant à la production, jamais un livrable client.

### 07-SUIVI

- [01-SUIVI-D-APPROPRIATION.md](./INTERNE-RSPIR/07-SUIVI/01-SUIVI-D-APPROPRIATION.md) — compréhension, propriété, nouvelle problématique et fermeture des données.
- [02-BON-MODIFICATION-TEST.md](./INTERNE-RSPIR/07-SUIVI/02-BON-MODIFICATION-TEST.md) — demande CRM reclassée en phase 2.
- [03-CONSTAT-FIN-GARANTIE-TEST.md](./INTERNE-RSPIR/07-SUIVI/03-CONSTAT-FIN-GARANTIE-TEST.md) — constat simulé que la garantie est satisfaite.

### 90-SOURCES-CLIENT — données fictives brutes

- [00-FICTION-ET-INTEGRITE.md](./INTERNE-RSPIR/90-SOURCES-CLIENT/00-FICTION-ET-INTEGRITE.md) — déclaration d'intégrité du jeu de test.
- [01-FICHE-DU-LEAD.md](./INTERNE-RSPIR/90-SOURCES-CLIENT/01-FICHE-DU-LEAD.md) — organisation, déclencheur, demande et inconnues initiales.
- [02-REPONSES-PREAPPEL.md](./INTERNE-RSPIR/90-SOURCES-CLIENT/02-REPONSES-PREAPPEL.md) — première lecture de Sophie et pièces existantes.
- [03-TRANSCRIPT-CADRAGE.txt](./INTERNE-RSPIR/90-SOURCES-CLIENT/03-TRANSCRIPT-CADRAGE.txt) — consentement, demande apparente et question confirmée.
- [04-ARTEFACT-VOLUMES.md](./INTERNE-RSPIR/90-SOURCES-CLIENT/04-ARTEFACT-VOLUMES.md) — volumes, délais, corrections, coûts et limites de couverture.
- [05-TRANSCRIPT-IMMERSION-OPERATIONS.txt](./INTERNE-RSPIR/90-SOURCES-CLIENT/05-TRANSCRIPT-IMMERSION-OPERATIONS.txt) — perspective de Marc et cas de mauvaise version.
- [06-TRANSCRIPT-IMMERSION-SERVICE.txt](./INTERNE-RSPIR/90-SOURCES-CLIENT/06-TRANSCRIPT-IMMERSION-SERVICE.txt) — perspective de Léa et inconnue sur la fréquence.
- [07-TRANSCRIPT-CONVERGENCE.txt](./INTERNE-RSPIR/90-SOURCES-CLIENT/07-TRANSCRIPT-CONVERGENCE.txt) — validation du périmètre par Sophie et Marc.
- [08-TRANSCRIPT-SESSION-DECISION.txt](./INTERNE-RSPIR/90-SOURCES-CLIENT/08-TRANSCRIPT-SESSION-DECISION.txt) — décision, propriétaires, seuil et appropriation.
- [09-NOTES-SUIVI.md](./INTERNE-RSPIR/90-SOURCES-CLIENT/09-NOTES-SUIVI.md) — état fictif deux semaines après la session.

### LIVRABLES-CLIENT — seulement ce qui serait partageable

- [SYNTHESE-DE-CADRAGE.md](./LIVRABLES-CLIENT/01-CADRAGE/SYNTHESE-DE-CADRAGE.md) — question, vérifications et participation demandée.
- [CONVERGENCE-VALIDEE.md](./LIVRABLES-CLIENT/02-CONVERGENCE/CONVERGENCE-VALIDEE.md) — périmètre retenu, raisons et limite.
- [DOSSIER-DE-DECISION.md](./LIVRABLES-CLIENT/03-DOSSIER-DE-DECISION/DOSSIER-DE-DECISION.md) — contenu final en douze sections.
- [DOSSIER-DE-DECISION-ATELIER-BOREAL-TEST.docx](./LIVRABLES-CLIENT/03-DOSSIER-DE-DECISION/DOSSIER-DE-DECISION-ATELIER-BOREAL-TEST.docx) — version Word de 15 pages, mise en page RSPIR.
- [DOSSIER-DE-DECISION-ATELIER-BOREAL-TEST.pdf](./LIVRABLES-CLIENT/03-DOSSIER-DE-DECISION/DOSSIER-DE-DECISION-ATELIER-BOREAL-TEST.pdf) — version PDF inspectée page par page.
- [SYNTHESE-DE-SUIVI.md](./LIVRABLES-CLIENT/04-SUIVI/SYNTHESE-DE-SUIVI.md) — compréhension, prise en charge et passage éventuel à la phase 2.

## Ce que ce test prouve — et ne prouve pas

Le test prouve que les fichiers s'enchaînent, que chaque conclusion peut remonter
à une source, que les portes peuvent être consignées et qu'un Dossier client
cohérent peut être produit. Il ne prouve pas encore qu'une personne autre que
son concepteur peut exécuter seule le kit, que les comptes fournisseurs sont
bien configurés, que les contrats sont juridiquement approuvés ou qu'un vrai
client comprendra et utilisera le livrable. Ces preuves exigent un premier mandat
réel supervisé et une validation humaine.
