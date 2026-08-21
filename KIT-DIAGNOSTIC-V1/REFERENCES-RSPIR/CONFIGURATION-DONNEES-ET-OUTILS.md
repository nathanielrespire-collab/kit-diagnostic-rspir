# Configuration des données et des outils — V1 candidate

## Statut

Cette configuration est le défaut opérationnel du kit testable. Elle ne remplace
pas la vérification des comptes réels ni l'annexe contractuelle. Avant le premier
mandat réel, confirmer le forfait, la région, les accès et le mécanisme de
suppression de chaque fournisseur.

## Pile minimale

| Fonction | Outil prévu | Données admises | Lieu à retenir avant vérification | Conservation RSPIR | État |
|---|---|---|---|---|---|
| Enregistrement et transcription | Fireflies.ai | voix, noms, courriels des participants, transcript | États-Unis par défaut; AWS et GCP selon Fireflies | supprimer au plus tard 90 jours après la fin du mandat | outil retenu; forfait et réglage à vérifier |
| Analyse assistée | OpenAI Codex ou ChatGPT dans l'espace RSPIR | extraits nécessaires, fichiers du mandat, résultats d'analyse | région du compte non vérifiée; traiter comme hors Québec et potentiellement multirégion | supprimer la tâche et ses fichiers au plus tard 90 jours après la fin du mandat; tenir compte du délai fournisseur | outil retenu; plan, région et conservation à vérifier |
| Dossier de travail maître | poste Windows local RSPIR | sources, transcripts exportés, analyses et brouillons | Québec, sur le poste de RSPIR | 90 jours après la fin du mandat, sauf pièces contractuelles | défaut V1 |
| Production de documents | Microsoft Word local | Dossier validé et modèles contractuels | Québec, sur le poste de RSPIR | même règle que le dossier maître | défaut V1 |
| Partage au client | PDF par un canal approuvé | livrables validés seulement | dépend du canal accepté par le client | copie de travail supprimée à 90 jours; copie finale selon l'entente | à choisir par mandat |

## Outils exclus des données brutes

- GitHub : aucun transcript, renseignement client ou livrable confidentiel;
- Notion : aucune source de mandat ni donnée brute;
- Pipedrive : coordonnées commerciales et état d'opportunité seulement;
- Google Drive, OneDrive ou SharePoint : aucun dépôt automatique avant choix
  écrit du canal et vérification de la région;
- connecteurs et recherche Web : aucune donnée client sans nécessité et
  autorisation distinctes.

## Conservation candidate

| Catégorie | Déclencheur | Action |
|---|---|---|
| Enregistrement Fireflies | fin du mandat | suppression au plus tard à J+90; plus tôt si le transcript validé suffit |
| Transcript exporté | fin du mandat | suppression à J+90 |
| Sources, analyses et brouillons | fin du mandat | suppression ou dépersonnalisation à J+90 |
| Dossier final contenant des renseignements personnels | fin du mandat | suppression de la copie de travail à J+90 |
| Contrats, consentements, modifications et constat signés | fin du mandat | conservation administrative de 7 ans, accès restreint |
| Matériel méthodologique dépersonnalisé | dépersonnalisation vérifiée | conservation permise sans donnée client ni secret d'affaires |

## Contrôles avant un client réel

1. Confirmer l'entité contractante RSPIR.
2. Vérifier le forfait Fireflies et activer l'auto-suppression à 90 jours si
   elle est disponible; sinon nommer le responsable de la suppression manuelle.
3. Vérifier le type d'espace OpenAI, sa région et ses paramètres de conservation.
4. Confirmer le canal de partage accepté par le client.
5. Remplir l'annexe de traitement avec les fournisseurs et régions vérifiés.
6. Inscrire la preuve de suppression dans le registre de fermeture.

## Sources fournisseurs

- Fireflies, stockage et transfert :
  https://guide.fireflies.ai/articles/9596505232-learn-about-data-storage-and-transfer
- Fireflies, suppression automatique :
  https://guide.fireflies.ai/articles/7870593373-learn-about-the-auto-delete-meeting-feature
- OpenAI, données d'affaires : https://openai.com/business-data/
- OpenAI, conservation des conversations et fichiers :
  https://help.openai.com/en/articles/8983778
- OpenAI, résidence des données ChatGPT :
  https://help.openai.com/en/articles/20001418-where-your-chatgpt-business-content-is-stored

