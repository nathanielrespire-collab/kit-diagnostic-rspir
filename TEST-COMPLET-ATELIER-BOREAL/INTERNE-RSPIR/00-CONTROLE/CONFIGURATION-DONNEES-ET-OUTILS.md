# Configuration des données et des outils — candidate de test

## Portée de cette décision

Cette configuration permet de tester le Diagnostic maintenant. Elle ne prétend
pas qu'un réglage de compte a été vérifié lorsqu'il ne l'a pas été. Avant un vrai
mandat, le propriétaire de chaque compte doit confirmer le forfait, la région,
les accès et le mécanisme de suppression.

## Pile minimale retenue

| Fonction | Outil réellement prévu | Données admises | Lieu retenu pour le risque | Conservation RSPIR | État |
|---|---|---|---|---|---|
| Enregistrement et transcription | Fireflies.ai | voix, noms, courriels des participants, transcript | États-Unis par défaut; AWS et GCP selon la documentation Fireflies du 20 janvier 2026 | réunion supprimée au plus tard 90 jours après la fin du mandat | outil confirmé; réglage du compte à vérifier |
| Analyse assistée | OpenAI Codex / ChatGPT de l'espace RSPIR | extraits nécessaires, fichiers du mandat, résultats d'analyse | région du compte non vérifiée; traiter comme hors Québec et potentiellement multirégion | supprimer la tâche et ses fichiers au plus tard 90 jours après la fin du mandat; la suppression fournisseur peut prendre jusqu'à 30 jours | outil confirmé; plan et région à vérifier |
| Dossier de travail maître | poste Windows local RSPIR | sources, transcripts exportés, analyses et brouillons | Québec, sur le poste de RSPIR | 90 jours après la fin du mandat, sauf pièces contractuelles | retenu pour la V1 testable |
| Production de documents | Microsoft Word local | Dossier validé et modèles contractuels | Québec, sur le poste de RSPIR | même règle que le dossier maître | confirmé localement |
| Partage au client | fichier PDF remis par un canal approuvé | livrables validés seulement | dépend du canal choisi avec le client | copie de travail supprimée à 90 jours; copie finale selon l'entente | canal non choisi |

## Outils exclus par défaut des données brutes

- GitHub : aucun transcript, renseignement client ou livrable confidentiel;
- Notion : aucune source de mandat ni donnée brute;
- Pipedrive : coordonnées commerciales et état d'opportunité seulement, jamais les transcripts;
- Google Drive, OneDrive ou SharePoint : aucun dépôt automatique avant choix écrit du canal et vérification de la région;
- connecteurs, recherche Web et MCP : aucune donnée client transmise sans nécessité et autorisation distinctes.

## Calendrier de conservation retenu pour le test

| Catégorie | Déclencheur | Action |
|---|---|---|
| Enregistrement Fireflies | fin du mandat | suppression au plus tard à J+90; plus tôt si le transcript validé suffit |
| Transcript exporté | fin du mandat | suppression à J+90 |
| Sources, analyses et brouillons | fin du mandat | suppression ou dépersonnalisation à J+90 |
| Dossier final contenant des renseignements personnels | fin du mandat | suppression de la copie de travail à J+90 |
| Contrats, consentements, modifications et constat signés | fin du mandat | conservation administrative de 7 ans, accès restreint |
| Matériel méthodologique dépersonnalisé | dépersonnalisation vérifiée | conservation permise sans donnée client ni secret d'affaires |

## Contrôles avant un vrai client

1. Vérifier le forfait Fireflies et activer l'auto-suppression à 90 jours si disponible; sinon créer une suppression manuelle datée.
2. Vérifier le type d'espace OpenAI, sa région de stockage et ses paramètres de conservation.
3. Confirmer le canal de partage accepté par le client.
4. Remplir l'annexe de traitement avec les fournisseurs et régions réellement vérifiés.
5. Inscrire une preuve de suppression au registre de fermeture.

## Sources fournisseurs consultées

- Fireflies, « Learn about data storage and transfer », mise à jour du 20 janvier 2026.
- Fireflies, « Auto-Delete Meeting Feature », mise à jour du 3 avril 2026.
- OpenAI, « Business data privacy, security, and compliance », consulté le 20 août 2026.
- OpenAI, « Chat and File Retention Policies in ChatGPT », consulté le 20 août 2026.

