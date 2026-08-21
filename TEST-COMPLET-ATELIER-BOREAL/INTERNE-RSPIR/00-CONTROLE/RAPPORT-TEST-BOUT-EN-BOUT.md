# Rapport du test bout en bout

## Verdict

Le parcours peut produire un Dossier de décision cohérent en respectant les
quinze étapes, les portes humaines simulées et la séparation interne/client.
Le test démontre une architecture testable, pas encore un système transféré.

## Chaîne exécutée

| Commande | Étape(s) | Sortie principale | Porte simulée | Résultat |
|---|---:|---|---|---|
| qualifier_le_mandat | 1 | qualification, score 6/12, palier Élargi | lead RSPIR | réussi |
| preparer_le_cadrage | 2 | recherche et préparation client | envoi externe | réussi |
| ingerer_le_cadrage | 3 | synthèse et question confirmée | question de départ | réussi |
| preparer_immersion | 4 | balayage radar et plan ciblé | personnes/artefacts | réussi |
| analyser_immersion | 4 | contradiction et flux réel | suffisance horizontale | réussi |
| preparer_convergence | 5-6 | comparaison de trois candidates | périmètre | réussi |
| ingerer_convergence | 6 | décision de périmètre | validation client | réussi |
| approfondir_perimetre | 7-10 | cause, économie, conditions, séquence, Stop List | suffisance | réussi avec une mesure préalable |
| preparer_second_regard | 11 | réserves et réponses | second regard | réussi |
| assembler_dossier_decision | 12 | douze sections | validation RSPIR | réussi |
| produire_version_client | 12 | DOCX et PDF | partage externe | produit, non envoyé |
| ingerer_session_decision | 13 | objections et correction du Dossier | session tenue | réussi |
| tester_garantie | 14 | sept critères | jugement RSPIR | réussi |
| preparer_suivi / fermer_diagnostic | 15 | appropriation et fermeture | transfert | réussi en simulation |

## Scénarios réellement exercés

- S03, incertitude à réduire : la fréquence exacte des reprises n'est pas prouvée;
- S04, aucune IA pertinente maintenant;
- S06, le client veut valider une solution déjà choisie;
- S09, dirigeante et opérations décrivent deux réalités différentes;
- S11, 31 dimensions comme radar et trois candidates seulement;
- S12, architecture CRM et champs détaillés laissés en phase 2.

## Défauts trouvés dans le kit

1. Le kit ne contient pas encore de commande distincte pour initialiser et remplir le paquet contractuel.
2. La pile de traitement et la conservation n'étaient pas encodées dans le manifeste du mandat.
3. Le générateur premium produit un gabarit, mais pas encore un Dossier rempli automatiquement à partir du Markdown interne.
4. Les portes humaines peuvent être consignées, mais aucune signature numérique ne les matérialise.
5. La suppression à 90 jours exige encore un responsable et une preuve manuelle si les forfaits fournisseurs n'offrent pas l'automatisation.

## Corrections appliquées pendant le test

L'initialisateur plaçait quatre modèles vides dans `LIVRABLES-CLIENT`. Ils ont
été déplacés dans les étapes internes correspondantes; le contrat
d'orchestration pointe maintenant vers le modèle Word interne. Les prochains
dossiers clients démarreront donc avec une zone de livrables vide.

La configuration des outils, des lieux et de la conservation est maintenant
une référence réutilisable copiée automatiquement dans chaque nouveau mandat.
Le manifeste indique aussi que la configuration des comptes doit être vérifiée.

## Conclusion honnête

Le contenu et l'orchestration sont assez complets pour un premier essai supervisé.
Ils ne sont pas encore assez automatisés pour dire à un agent « fais tout » sans
intervention : il faut toujours fournir ou simuler les validations à chaque porte.
