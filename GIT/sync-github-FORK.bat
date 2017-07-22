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

// (GITBASH ONLY) GO BACK 1 COMMIT ON YOUR FORK
// 
git fetch origin
git log -3
git reset --hard HEAD^ 
git push origin master --force
