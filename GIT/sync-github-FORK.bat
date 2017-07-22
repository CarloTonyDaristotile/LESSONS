git remote add upstream  https://github.com/akhan118/Coding-Crash-Course.git

// FOR MERGING LOCAL REP WITH UPSTREAM
git fetch upstream
git checkout master
git merge upstream/master

/////////////////////////////////////////////////////////////////////////////
// FOR HARD RESET LOCAL REP WITH UPSTREAM
git fetch upstream
git checkout master
// FIXES YOUR LOCAL TO SAME AS UPSTREAM(akhan/online)
git reset --hard upstream/master  
// HARD PUSH YOUR LOCAL(master) TO YOUR ONLINE FORK(origin master)
git push origin master --force

/////////////////////////////////////////////////////////////////////////////
// (GITBASH ONLY) GO BACK 1 COMMIT ON YOUR FORK(origin/master)
// FETCH FORK(ONLINE) TO YOUR LOCAL
// UNDO 1 COMMIT LOCALLY
// AND SEND IT BACK TO FORK(origin/master)
git fetch origin
git log -3
git reset --hard HEAD^ 
git push origin master --force

/////////////////////////////////////////////////////////////////////////////
// (GITBASH ONLY) GO BACK 1 COMMIT ON YOUR LOCAL(master)
// AND SEND IT BACK TO FORK(origin/master)
git log -3
git reset --hard HEAD^
git push origin master --force
