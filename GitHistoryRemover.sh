# This script is a script that, when run, allows the user to delete all of the commit history of a repository
# This is not a given script, so before you run it, make sure you back up your stuff before running it
# Author - Thomas Hohnke
# Version V1 2018

#Check out to a temporary branch:
git checkout --orphan TEMP_BRANCH

# Add all the files:
git add -A

# Commit the changes:
git commit -am "Initial commit"

# Delete the old branch:
git branch -D master

# Rename the temporary branch to master:
git branch -m master

#Finally, force update to our repository:
git push -f origin master
