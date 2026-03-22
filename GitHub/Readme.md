# [Git](https://git-scm.com/videos)

1. [GitHub](https://docs.github.com/en/get-started/quickstart/hello-world) is a code hosting platform for version control and collaboration. It lets you and others work together on projects from anywhere.
2. A [repository](https://docs.github.com/en/get-started/quickstart/hello-world#creating-a-repositohttps://docs.github.com/en/get-started/quickstart/hello-world) is usually used to organize a single project.
   - You can use this [cheat sheet](https://www.markdownguide.org/cheat-sheet/) to get started with Markdown syntax. GitHub lets you add a README file at the same time you create your new repository.
3. [Branching](https://docs.github.com/en/get-started/quickstart/hello-world#creating-a-branch) lets you have different versions of a repository at one time.
   - [Branches](https://docs.github.com/en/articles/creating-and-deleting-branches-within-your-repository) allow you to build new features or test out ideas without putting your main project at risk. You cannot fork a private repository to an organization using GitHub Free.
   - You can use branches to have different versions of a project at one time.
   - This is helpful when you want to add new features to a project without changing the main source of code.
   - When you create a branch off the main branch, you're making a copy, or snapshot, of main as it was at that point in time.
   - [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow#introduction) is a lightweight, branch-based workflow.
4. On GitHub, saved changes are called [commits](https://docs.github.com/en/get-started/quickstart/hello-world#making-and-committing-changes). Each commit has an associated commit message, which is a description explaining why a particular change was made.
5. When you open a [pull request](https://docs.github.com/en/get-started/quickstart/hello-world#opening-a-pull-request), you're proposing your changes and requesting that someone review and pull in your contribution and merge them into their branch.
   - Pull requests show diffs, or differences, of the content from both branches. The changes, additions, and subtractions are shown in different colors.
   - Sometimes, a pull request may introduce changes to code that [conflict](https://docs.github.com/en/get-started/quickstart/hello-world#merging-your-pull-request) with the existing code on main.
   - If there are any conflicts, GitHub will alert you about the conflicting code and prevent merging until the conflicts are resolved.
   - You can make a commit that resolves the conflicts or use comments in the pull request to discuss the conflicts with your team members.
6. [The types of VCS are](https://serengetitech.com/tech/introduction-to-git-and-types-of-version-control-systems/):
   1.	Local Version Control System: a local database located on your local computer in which every file change is stored as a patch.
   2.	Centralized Version Control System: a single server that contains all the file versions. most well-known examples of centralized version control systems are Microsoft Team Foundation Server (TFS) and SVN.
   3.	Distributed Version Control System: Git is the most well-known example of distributed version control systems. With distributed version control systems, clients don’t just check out the latest snapshot of the files from the server, they fully mirror the repository, including its full history. Thus, everyone collaborating on a project owns a local copy of the whole project, i.e. owns their own local database with their own complete history.
7. A deploy key is an SSH key that is stored on your server and grants access to a single GitHub repository. This key is attached directly to the repository instead of to a personal user account.
## Installation & Training
- install the [GitHub Desktop](https://desktop.github.com/) client. For more information, see ["Installing and configuring GitHub Desktop."](https://docs.github.com/en/desktop/installing-and-configuring-github-desktop)
- For [installation instructions](https://docs.github.com/en/github-cli/github-cli/about-github-cli#installing-github-cli) for GitHub CLI, see the [GitHub CLI repository](https://github.com/cli/cli#installation).
- [GitHub Training Kit](https://training.github.com/)
- [Git command list](https://git-scm.com/docs)

## 
- [Creating a repository](https://docs.github.com/en/get-started/quickstart/create-a-repo?tool=cli#create-a-repository) for your project allows you to store code in GitHub. 
- [Open Source Guides](https://opensource.guide/) that will help you foster a healthy open source community by recommending best practices for creating and maintaining repositories for your open source project. [About GitHub CLI](https://docs.github.com/en/github-cli/github-cli/about-github-cli)

## [Fork](https://docs.github.com/en/get-started/quickstart/fork-a-repo#about-forks)
- A fork is a new repository that shares code and visibility settings with the original “upstream” repository. Forking a repository will allow you to make changes to another repository without affecting the original.

