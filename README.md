# githubprotetion

Prototype for an AdvPL/TLPP review flow inside GitHub.

## How it works

1. Developers work only on feature branches.
2. Pull requests target `main`.
3. GitHub Actions runs the `AdvPL/TLPP PR Gate` workflow.
4. Copilot review is requested from the PR reviewers menu and used for advisory feedback.
5. `@protetiontest/techlead` is required by `CODEOWNERS`.
6. Merge is allowed only after the required checks and the tech lead approval.

## What is enforced now

- Required review ownership through `CODEOWNERS`
- A required status check for critical AdvPL/TLPP policy issues
- Repository instructions to guide Copilot review comments

## GitHub limitation

GitHub Copilot code review leaves comments, but it does not count as a required approval. The blocking gate in this prototype is the workflow check plus the tech lead approval.

## Next GitHub settings to enable

- Protect `main`
- Require pull requests before merging
- Require the `Critical policy gate` status check (workflow: `AdvPL/TLPP PR Gate`)
- Require code owner reviews
- Block force pushes
- Dismiss stale approvals when new commits are pushed
