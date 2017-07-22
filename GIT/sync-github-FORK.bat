git remote add upstream  https://github.com/akhan118/Coding-Crash-Course.git

// FOR MERGING LOCAL REP WITH UPSTREAM
git fetch upstream
git checkout master
git merge upstream/master

// FOR HARD RESET LOCAL REP WITH UPSTREAM
git fetch upstream
git checkout master
git reset --hard upstream/master  
git push origin master --force
