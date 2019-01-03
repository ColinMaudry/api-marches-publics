# API Marchés publics

Une API qui diffuse [les données de marchés publics](https://www.data.gouv.fr/fr/datasets/donnees-essentielles-de-la-commande-publique-transmises-via-le-pes-marche/) remontées via le PES Marché.

J'utilise `json-server` pour exposer ces données au format JSON.

## Outils nécessaires pour la conversion vers JSON

- [xml2json](https://github.com/Cheedoong/xml2json)
- [jq](https://stedolan.github.io/jq/)
- [xml2jsonDECP.sh](https://github.com/etalab/format-commande-publique/blob/dgfip/scripts/xml2jsonDECP.sh) et [jsonDECP.jq](https://github.com/etalab/format-commande-publique/blob/dgfip/scripts/jsonDECP.jq) dans le même répertoire
