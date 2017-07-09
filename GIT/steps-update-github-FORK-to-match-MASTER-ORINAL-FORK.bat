// LINK
// https://stackoverflow.com/questions/40602721/syncing-fork-with-upstream-git-fetch-git-checkout-git-merge-vs-git-checkou

git remote add upstream https://github.com/akhan118/Coding-Crash-Course.git

// NOTE! git pull = git fetch + git merge
// 3 steps

git fetch upstream
git checkout master
git merge upstream/master
