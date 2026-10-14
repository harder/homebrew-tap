# Harder Homebrew tap

Homebrew formulae for [SkillView](https://skillview.dev/) and other projects by Kevin Harder.

## Install SkillView

```sh
brew install harder/tap/skillview
```

This installs the standalone `skillview` command and its GitHub CLI (`gh`) dependency on Apple Silicon macOS and x86_64 Linux. For other platforms, see the [SkillView installation guide](https://skillview.dev/docs.html#install).

The GitHub CLI extension is a separate installation path:

```sh
gh extension install harder/gh-skillview
```

## Updates

The [formula](Formula/skillview.rb) follows the latest stable
[SkillView release](https://github.com/harder/gh-skillview/releases/latest).
An hourly workflow checks for a new release, renders the formula from the
tagged SkillView source and verified binary checksums, and opens a tap pull
request. It dispatches validation on macOS ARM64 and Linux x64; the pull request
is merged only after both jobs pass. Use the **Update SkillView formula** workflow's
manual dispatch to check immediately after publishing a release.

Homebrew users can then run:

```sh
brew update
brew upgrade harder/tap/skillview
```

The SkillView release workflow also uploads a generated formula artifact for
diagnostics. If the automatic update fails, inspect the tap workflow run and
its pull request before changing the formula manually.
