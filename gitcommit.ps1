   git init
   git config user.email $(gitemail)
   git config user.name $(gitusername)
   git remote set-url --push origin https://$(gitusername):$(gitpassword)@dev.azure.com/gocloudclient0563/OPGT%20IT%20Modernization/_git/OPGT%20IT%20Modernization
   git status
   git add 'D365/CE/Reference Data/reference_data.zip'
   git stash
   git status
   git pull origin $(Build.SourceBranchName)
   git stash pop
   git add 'D365/CE/Reference Data/reference_data.zip'
   git commit -m " Dev Reference data - $(versionnumber)"
   git push origin $(Build.SourceBranchName)