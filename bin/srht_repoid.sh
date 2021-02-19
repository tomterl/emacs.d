#!/bin/bash
bearer_token="AK/gEGIAAAAAGWdpdC5zci5odC9SRVBPU0lUT1JJRVM6UlcAB3RvbXRlcmyoh7cc7nWZ3UvTpPHwllaUZzk6Ev5dlVdg0IJ4Co7k4w"

repo_name="${1}"

repo_id=$(curl --silent --oauth2-bearer $bearer_token \
     -G --data-urlencode query='query { repositoryByName(name: "'$repo_name'") { id } }' \
     https://git.sr.ht/query | jq '.data.repositoryByName.id')


echo $repo_id

