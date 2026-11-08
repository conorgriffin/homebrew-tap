# Homebrew tap

Apps by [Conor Griffin](https://conorgriffin.com), for [Homebrew](https://brew.sh).

```sh
brew install --cask conorgriffin/tap/tessera
```

Or tap once, then install by name:

```sh
brew tap conorgriffin/tap
brew install --cask tessera
```

| Cask | App |
| --- | --- |
| `tessera` | [Tessera](https://conorgriffin.com/tessera): inspect, verify and build JSON Web Tokens (JWT and JWE) on your Mac |

Tessera updates itself, so `brew upgrade` leaves it alone unless you pass `--greedy`. The cask installs the direct-download edition; Tessera Pro for it is a license from [conorgriffin.com/tessera](https://conorgriffin.com/tessera).

## Releasing (maintainer)

Each Tessera release bumps `version` and `sha256` in `Casks/tessera.rb`:

```sh
shasum -a 256 Tessera-X.Y.dmg
```
