#!/bin/bash
set -e

#Bash script for languages.koodimonni.fi cronjob

#Ask for changes in translations from wordpress.org and save results in satis.json
#Save into variable so that can be shouted out
LOG=$(/usr/bin/php bin/wp-org-api)

#Satis.json represents the state of known packages
#When it changes there has been changes or additions in translations
CHANGED=$(git diff --name-only satis.json)

if [ "$CHANGED" != "" ]
then
  echo "Packages have changed!"
  echo "LOG:"
  echo $LOG
  echo "Updating changes into github..."
  NOW=$(date +"%T %m-%d-%y")
  #Build satis repos and push changes into github
  /usr/bin/php bin/satis build satis.json .
  git add --all
  git commit -am "Updated languages in: $NOW"
  git push origin master
fi