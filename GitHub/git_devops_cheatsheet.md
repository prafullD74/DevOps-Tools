# 🛠️ Git & GitHub Commands for DevOps Engineers
> Daily-use reference with real-world examples

---

## 1. 🔧 Repository Setup & Configuration

| Command | Description | Real-World Example |
|--------|-------------|-------------------|
| `git init` | Initialize a new local repo | `git init my-infra-repo` |
| `git clone <url>` | Clone a remote repo | `git clone git@github.com:org/k8s-configs.git` |
| `git config --global user.name "Name"` | Set global username | `git config --global user.name "Ravi Sharma"` |
| `git config --global user.email "email"` | Set global email | `git config --global user.email "ravi@company.com"` |
| `git config --list` | View all config settings | Verify before pushing to production repos |
| `git remote add origin <url>` | Link local repo to remote | `git remote add origin git@github.com:org/repo.git` |
| `git remote -v` | View remote connections | Check if origin is pointing to correct GitHub repo |

---

## 2. 📁 Staging & Committing

| Command | Description | Real-World Example |
|--------|-------------|-------------------|
| `git status` | Check working tree status | Run before every commit to verify changes |
| `git add <file>` | Stage a specific file | `git add terraform/main.tf` |
| `git add .` | Stage all changes | Stage all Dockerfile and YAML changes at once |
| `git add -p` | Interactively stage chunks | Review hunk-by-hunk before committing config changes |
| `git commit -m "message"` | Commit with message | `git commit -m "fix: update nginx ingress timeout to 60s"` |
| `git commit --amend` | Edit last commit message | Fix a typo in last commit before pushing |
| `git diff` | View unstaged changes | Review `.env` changes before staging |
| `git diff --staged` | View staged changes | Final check before `git commit` |

---

## 3. 🌿 Branching Strategy

| Command | Description | Real-World Example |
|--------|-------------|-------------------|
| `git branch` | List local branches | See all feature/hotfix branches |
| `git branch -a` | List all branches (local + remote) | Check remote branches in CI/CD pipelines |
| `git branch <name>` | Create a new branch | `git branch feature/add-prometheus-alerts` |
| `git checkout <branch>` | Switch to a branch | `git checkout main` |
| `git checkout -b <branch>` | Create and switch to branch | `git checkout -b hotfix/fix-jenkins-pipeline` |
| `git branch -d <branch>` | Delete local branch | `git branch -d feature/old-helm-chart` |
| `git push origin --delete <branch>` | Delete remote branch | Clean up after PR is merged |
| `git branch -m <old> <new>` | Rename a branch | `git branch -m master main` |

---

## 4. 🔄 Merging & Rebasing

| Command | Description | Real-World Example |
|--------|-------------|-------------------|
| `git merge <branch>` | Merge branch into current | `git merge feature/add-monitoring` into `main` |
| `git merge --no-ff <branch>` | Merge with merge commit | Preserve history when merging feature branches |
| `git rebase <branch>` | Rebase current onto branch | `git rebase main` to sync feature branch with latest main |
| `git rebase -i HEAD~3` | Interactive rebase (squash) | Squash 3 WIP commits into one clean commit |
| `git cherry-pick <hash>` | Apply specific commit | Port a critical fix from `dev` to `release` branch |
| `git merge --abort` | Abort a conflicted merge | Bail out when auto-merge fails on a config file |
| `git rebase --abort` | Abort a rebase | Cancel rebase if too many conflicts |

---

## 5. 📤 Push & Pull

| Command | Description | Real-World Example |
|--------|-------------|-------------------|
| `git pull` | Fetch and merge remote changes | Sync local `main` before starting work |
| `git pull --rebase` | Fetch and rebase instead of merge | Keep clean linear history in CI/CD repos |
| `git push origin <branch>` | Push branch to remote | `git push origin feature/new-ci-workflow` |
| `git push -u origin <branch>` | Push and set upstream | First push of a new branch |
| `git push --force-with-lease` | Safe force push | Update a PR branch after interactive rebase |
| `git fetch --all` | Fetch all remote branches | Sync before checking remote pipeline branches |
| `git fetch --prune` | Remove deleted remote refs | Clean up stale remote-tracking branches |

---

## 6. 🕵️ Log & History

| Command | Description | Real-World Example |
|--------|-------------|-------------------|
| `git log` | Full commit history | Audit changes made to a Kubernetes manifest |
| `git log --oneline` | Compact commit history | Quick scan of recent deployments |
| `git log --oneline --graph --all` | Visual branch graph | Understand branching/merge structure |
| `git log -p <file>` | Show changes per commit for a file | `git log -p helm/values.yaml` |
| `git log --author="Name"` | Filter commits by author | Review team member's infra changes |
| `git blame <file>` | Show who changed each line | Find who changed a Dockerfile line that broke build |
| `git show <hash>` | Show a specific commit | Inspect what changed in a release commit |

---

## 7. ↩️ Undoing Changes

| Command | Description | Real-World Example |
|--------|-------------|-------------------|
| `git restore <file>` | Discard unstaged changes | Undo accidental change to `terraform.tfvars` |
| `git restore --staged <file>` | Unstage a file | Remove accidentally staged secrets file |
| `git reset HEAD~1` | Undo last commit (keep changes) | Undo a premature commit before code review |
| `git reset --hard HEAD~1` | Undo last commit (discard changes) | Revert to last good state after bad deploy config |
| `git revert <hash>` | Create a new undo commit | Safely revert a bad commit already pushed to `main` |
| `git clean -fd` | Remove untracked files/dirs | Clean up generated build artifacts locally |

---

## 8. 🗃️ Stashing

| Command | Description | Real-World Example |
|--------|-------------|-------------------|
| `git stash` | Save uncommitted changes | Stash WIP before pulling urgent hotfix branch |
| `git stash pop` | Restore stashed changes | Re-apply changes after switching tasks |
| `git stash list` | View all stashes | See multiple stashed work contexts |
| `git stash apply stash@{1}` | Apply a specific stash | Pick specific saved work context |
| `git stash drop stash@{0}` | Delete a specific stash | Clean up old stash entries |
| `git stash -u` | Stash including untracked files | Stash new config files not yet added |

---

## 9. 🏷️ Tagging (Releases)

| Command | Description | Real-World Example |
|--------|-------------|-------------------|
| `git tag` | List all tags | View all release versions |
| `git tag v1.0.0` | Create a lightweight tag | Tag a commit for a deployment version |
| `git tag -a v1.0.0 -m "Release"` | Create annotated tag | `git tag -a v2.3.1 -m "Hotfix: memory leak fix"` |
| `git push origin v1.0.0` | Push a tag to remote | Trigger a versioned GitHub Actions release workflow |
| `git push origin --tags` | Push all tags | Sync all release tags to remote |
| `git tag -d v1.0.0` | Delete a local tag | Remove a mistakenly created tag |

---

## 10. 🐙 GitHub CLI (gh) — Daily DevOps Use

| Command | Description | Real-World Example |
|--------|-------------|-------------------|
| `gh pr create` | Create a Pull Request | Open PR from feature branch with description |
| `gh pr list` | List open PRs | Check team's pending PRs before standup |
| `gh pr merge <number>` | Merge a PR | Merge after approvals via CLI |
| `gh pr checkout <number>` | Check out a PR locally | Review and test a colleague's infra PR |
| `gh issue create` | Create a GitHub issue | File a bug from terminal during incident |
| `gh workflow run <name>` | Manually trigger a workflow | `gh workflow run deploy.yml` |
| `gh run list` | List recent workflow runs | Monitor CI/CD pipeline status |
| `gh run watch` | Watch a live workflow run | Real-time build/deploy monitoring |
| `gh secret set SECRET_NAME` | Set a repo secret | Add `AWS_ACCESS_KEY_ID` to repo secrets |
| `gh repo clone org/repo` | Clone a repo using gh | Faster clone with auth pre-configured |

---

## 11. 🔍 Advanced / Power Commands

| Command | Description | Real-World Example |
|--------|-------------|-------------------|
| `git bisect start` | Binary search for a bad commit | Find which commit broke the pipeline |
| `git reflog` | View history of HEAD movements | Recover from accidental `reset --hard` |
| `git shortlog -sn` | Commit count per contributor | Check team contribution for a release |
| `git archive --format=zip HEAD > app.zip` | Export repo as zip | Package source for artifact upload |
| `git submodule update --init` | Init and update submodules | Pull shared Helm charts or Terraform modules |
| `git worktree add ../hotfix hotfix/branch` | Multiple working trees | Work on hotfix without stashing main work |

---

## 12. 🧹 Housekeeping & Maintenance

| Command | Description | Real-World Example |
|--------|-------------|-------------------|
| `git gc` | Garbage collect / optimize repo | Compress large infra repos |
| `git prune` | Remove unreachable objects | After cleanup of old branches |
| `git remote prune origin` | Remove stale remote refs | Sync after team deletes merged branches |
| `git ls-files` | List tracked files | Audit what's tracked in a repo |
| `git check-ignore -v <file>` | Debug `.gitignore` rules | Check why a file isn't being ignored |

---

## 💡 Pro Tips for DevOps

```bash
# Alias for a beautiful log view
git config --global alias.lg "log --oneline --graph --all --decorate"
git lg

# Set default branch to main
git config --global init.defaultBranch main

# Auto-prune on fetch
git config --global fetch.prune true

# Rebase by default on pull
git config --global pull.rebase true

# Sign commits with GPG (required in many orgs)
git config --global commit.gpgsign true
```

---

*Last updated: March 2026 | Covers Git 2.x and GitHub CLI 2.x*
