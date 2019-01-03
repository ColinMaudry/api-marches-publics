#!/bin/bash

domain=files.data.gouv.fr
xml2jsonDECP=/home/colin/git/format-commande-publique/scripts/xml2jsonDECP.sh

#Retrieve XML from the server
wget -rnp -nd $domain/decp/ -A xml

#Convert it to JSON
for xml in `ls *.xml`
do
    $xml2jsonDECP $xml > $xml.json
    rm $xml
done

#Merge all JSON
jq -s '{ marches: map(.marches[0]) }' DECP*.json > ../marches.json
#Thanks RomanPerekhrest (https://unix.stackexchange.com/a/433687)

#Delete JSON
rm DECP*.json
