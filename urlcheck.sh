#!/bin/bash
while read websites
do
    urlcheck=$(curl -X GET https://"$websites" -i | grep -E "HTTP|Location" )
    echo "https://$websites  $urlcheck" >> urlresult.txt
done < $1