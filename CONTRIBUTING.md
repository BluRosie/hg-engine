# Contributing to hg-engine

Hello!  `hg-engine` is always open to contributors making pull requests for features or other battle engine facets.
These contributions are assessed based on whether or not they are "in-scope" and then merged as they are completed.

## Scope

The overall scope of the project is first and foremost battle engine overhauls.  `hg-engine` aims to be a battle engine that ports all of the features from later generations to that of HeartGold.

From there, we also have quality of life improvements.  These are things like repels that automatically prompt usage of another one as well as allowing for easy expansion and editing of the music combo tables.

## Bug Reports

We use [GitHub](https://github.com/BluRosie/hg-engine/issues) issues to track bugs.

The Issues list is somewhat of a TODO list that is worked through.

### What should I do before making a bug report?

- Does your bug occur on the latest unmodified (clean) version of the [`main`](https://github.com/BluRosie/hg-engine/tree/main)?  If not, please do not submit a report - the issue is most likely one introduced by your game.
- Has somebody else already found this issue? This is best done by searching the [bug tracker](https://github.com/BluRosie/hg-engine/issues) to see if anybody else reported it. If there is already an issue, replying to the existing issue with more information can help solve the problem.

### How do I submit a bug report?

If you run into an issue with the project, open an [issue](https://github.com/BluRosie/hg-engine/issues/new).

The best bug reports have enough information that we won't have to contact you for more information. We welcome all efforts to improve hg-engine, but would be very grateful if you completed as much of the checklist as possible in your bug report. This will help other contributiors fix your issue.

If it is an issue that our implementation differs from how the game does it, it would be ideal to attach gameplay footage demonstrating the difference.  Footage from Scarlet/Violet (or any of the games since USUM) is the best, followed by the Japanese Pokémon Wiki ([ポケモンWiki](https://wiki.ポケモン.com/wiki/%E3%83%A1%E3%82%A4%E3%83%B3%E3%83%9A%E3%83%BC%E3%82%B8)).  From there, the preference would be Smogon Forums Research post, then a Showdown Replay, and finally the description from Bulbapedia.  Please mention if it's an overall battle engine or damage bug.

Ideally, the issue entry details reproduction steps and the context under which the bug occurs.  Screenshots and even a save provided will immensely help in testing out and fixing the issue down the line.

Commonly, the issue is initially reported via a Discord message.  It is talked about on the Discord channels in the [Kingdom of DS Hacking](https://discord.gg/zAtqJDW2jC) or [DS Modding Community](https://discord.gg/YBtdN3aXfv), and then a link to the conversation is pasted in the Issue that is created on GitHub.  This is also acceptable for the time being.

### What happens after I submit a bug report?

It will be fixed at some point.  Depending on its urgency, it may be marked as urgent and efforts will be prioritized there shortly.

## Pull Requests

If you have read all of this and still need help, feel free to swing by the Discord server and ask for help in the `hg-engine` channels.

### How do I submit a pull request?

#### 1. Get a working local copy
If you haven't already, follow [README.md](README.md) to get a working local copy of `hg-engine`.

Make sure to set up your own fork so that you have your own repository you can push code to.

#### 2. Set hg-engine as a remote
This will designate the main `hg-engine` repository as a remote.
```bash
git remote add hge https://github.com/BluRosie/hg-engine.git # You can replace hge with anything you want. This tutorial assumes you used hge.
```

#### 3. Create a new branch
This will create a new branch and switch to it.
```bash
git switch -c newFeature # the name newFeature can be anything you want. This tutorial assumes you used newFeature.
```

#### 4. Copy main to your new branch
This will change your new branch to match the latest version of main.
```bash
git reset --hard main
```

#### 5. Implement your code
All of your work should go on this new, clean branch. If you already started work on a different branch, you can [cherry-pick](https://git-scm.com/docs/git-cherry-pick) you old commits onto this new branch, or just copy and paste the changes from the original files.

#### 6. Push your changes
When you push your first commit, you'll need to push the new branch to the remote repo.
```bash
git push --set-upstream origin newFeature
```

#### 7. Open Pull Request
Once your work is complete and pushed to the branch on Github, you can open a [pull request from your branch](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork), targeting the the main branch from `hg-engine`. Please fill out the pull request description as completely as possible.

### What happens after I submit a pull request?

The pull request is reviewed and comments are made.  There is a little bit of a back and forth where the maintainers will comment and potentially request changes, and you will have to implement the suggestions.  After a bit, the PR will be approved at which point it is ready to merge.

Contributors are responsible for responding to and updating their branch by addressing the feedback in the review. Contributors are also responsible for making sure the branch passes the build check at all times.

There is a lot of good faith currently in the PR process that puts a little effort on the contributors to ensure that their code builds and works.  We may refuse contributions that are clearly untested or dysfunctional.

#### Note

This is roughly adapted from [`pokeemerald-expansion`'s CONTRIBUTING.md](https://github.com/rh-hideout/pokeemerald-expansion/blob/master/CONTRIBUTING.md)

The process is intentionally less formal in `hg-engine`.
