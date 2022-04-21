# teeny-git
  USAGE: `./<scriptname> [-hld]`

# Philosophy
- Devs don't want to learn git
- Do git for them 
- Use native git features
- Default strategy:
    - Feature Branches
    - Commit daily progress
    - Always squash & rebase
    - Flow:
        1. Commit local changes
        2. Reset and squash
        3. Checkout default branch & pull changes
        4. Checkout current feature branch & rebase
        5. Force push

- Using this default flow, a dev can carry all work in a single commit through a feature branch all the way to merge without ever issuing a single git command, just keep your work saved and changes will be pulled automatically

# Considerations & limitations:
- file structure must never change, no local working copies allowed inside the repo or they'll be committed at the end of the day
    - is that a problem? a temp file comitted should be deleted when its removed
- local fork?? <- might be an idea
- Rebase isn't immune to [merge conflicts](https://docs.github.com/en/get-started/using-git/resolving-merge-conflicts-after-a-git-rebase) 
    - one strategy might be "always take my changes" and deal with conflicts publicly when the branch is merged as a team