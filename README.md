# Jboczek Tap

## How do I install these formulae?

`brew install jboczek/tap/<formula>`

Or `brew tap jboczek/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "jboczek/tap"
brew "<formula>"
```

## `skills-manager`

Install the macOS formula:

```sh
brew install jboczek/tap/skills-manager
```

The formula uses the native Apple Silicon or Intel archive from the matching
immutable [skills-manager release](https://github.com/jboczek/skills-manager/releases).
Linux, Windows, bottles, and casks are not included.

The trusted publisher is dispatched manually with a published `vX.Y.Z` tag.
It verifies the release assets, checksums, source commit, Cargo version, and
artifact attestations before opening one formula-only PR. The PR requires the
native `formula (ARM64)` and `formula (Intel)` checks; `main` is protected and
the publisher only enables auto-merge after both checks pass.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
