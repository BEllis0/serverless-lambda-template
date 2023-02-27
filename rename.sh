#!/bin/bash
read -p "Enter a Project Name: " projectname
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
sed -i '' "s/pefsa-microservice-template/$projectname/" ./package.json ./README.md serverless.yaml
readmename=${projectname//-/ }
sed -i '' "s/Pefsa Micro-Services Template/$readmename/" ./README.md
echo "Project renamed: $projectname"
echo " ***** Don't forget to change the working directory to: $projectname ! ******"
