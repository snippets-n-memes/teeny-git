WORKING_BRANCH=$(git banch --show-current)
git add .
git commit -am "End of day progress: $(date)"
git reset --hard HEAD~2
git merge --squash HEAD@{1}
git commit
git checkout main
git pull
git checkout "$WORKING_BRANCH"
git rebase main
git push origin "+$WORKING_BRANCH"