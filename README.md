# Harder Homebrew tap

Homebrew formulae for [SkillView](https://skillview.dev/) and other projects by Kevin Harder.

## Install SkillView

```sh
brew install harder/tap/skillview
```

This installs the standalone `skillview` command and its GitHub CLI (`gh`) dependency. SkillView 1.0.0 has release binaries for Apple Silicon macOS and x86_64 Linux. For other platforms, see the [SkillView installation guide](https://skillview.dev/docs.html#install).

The GitHub CLI extension is a separate installation path:

```sh
gh extension install harder/gh-skillview
```

## Maintainer notes

The formula is in [`Formula/skillview.rb`](Formula/skillview.rb). For a new SkillView release, update its version, platform asset URLs, and SHA-256 hashes from the published [release checksums](https://github.com/harder/gh-skillview/releases). Test installation and `brew test harder/tap/skillview` on both supported platforms before publishing the update. The SkillView release workflow can generate a formula artifact, but it does not publish to this tap automatically.
