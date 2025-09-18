<div align="center">

# [homebrew][brew]-[tap][tapDocs]

my coolest [Apps][apps] and [Tools][tools]

</div>

## Install

Run the following command: <sup><code>with [Homebrew][brew] installed</code></sup>

```powershell
brew tap artginzburg/tap
```

## Usage

> Install any of my Casks and Formulas

```powershell
brew install [--cask] <name>
```

> List all of my Formulas

```powershell
brew search artginzburg
```

[brew]: https://brew.sh
[tapDocs]: https://docs.brew.sh/Taps
[apps]: https://github.com/artginzburg/homebrew-tap/tree/main/Casks
[tools]: https://github.com/artginzburg/homebrew-tap/tree/main/Formula

## Contributing

PRs to update casks/formulas are welcome. Yes, this could be automated, but for small utilities I did not bother.
This command checks for outdated versions, and should automatically open PRs:

```sh
brew bump --tap artginzburg/tap --open-pr
```

> This also lists potential issues, like deprecated methods in Casks. Feel free to fix them and open a PR manually.
