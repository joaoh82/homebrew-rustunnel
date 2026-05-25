# homebrew-rustunnel

The official Homebrew tap for the [**rustunnel**](https://rustunnel.com) CLI — a self-hosted secure tunnel client that exposes local HTTP/HTTPS/TCP/UDP services to the public internet through a relay server you control (or [our managed service](https://rustunnel.com)). Open-source, written in Rust, pay-as-you-go on the hosted tier.

## Install

```sh
brew install joaoh82/rustunnel/rustunnel
rustunnel --help
```

That's it — no `brew tap` step is needed. Homebrew resolves the tap automatically the first time you reference it as `joaoh82/rustunnel/...`.

### Upgrade

```sh
brew update && brew upgrade rustunnel
```

### Uninstall

```sh
brew uninstall rustunnel
brew untap joaoh82/rustunnel   # optional — removes the tap itself
```

## Quick start

After installing, point the client at a server (use our managed edge or your own self-hosted one) and forward a local service:

```sh
# Expose a local web server on port 3000 through the managed EU edge
rustunnel http 3000 --server eu.edge.rustunnel.com --token <your-token>

# TCP port forwarding
rustunnel tcp 5432 --server eu.edge.rustunnel.com --token <your-token>

# UDP (game servers, DNS, etc.)
rustunnel udp 27015 --server eu.edge.rustunnel.com --token <your-token>
```

Run `rustunnel setup` for an interactive config wizard that writes `~/.rustunnel/config.yml`.

## Platforms

The formula installs pre-built binaries for:

- macOS — Apple Silicon (`aarch64`) and Intel (`x86_64`)
- Linux — `aarch64` and `x86_64`

## Links

- 🌐 Website: <https://rustunnel.com>
- 📖 Documentation: <https://rustunnel.com/docs>
- 💻 Source code: <https://github.com/joaoh82/rustunnel>
- 🪪 License: [AGPL-3.0](https://github.com/joaoh82/rustunnel/blob/main/LICENSE) (server + CLI). The CLI is free to use against any server.
- 🐛 Issues: <https://github.com/joaoh82/rustunnel/issues>

## About this repo

This tap holds a single formula at [`Formula/rustunnel.rb`](./Formula/rustunnel.rb). It's regenerated and pushed automatically by the main [`joaoh82/rustunnel`](https://github.com/joaoh82/rustunnel) release workflow on every stable tag — please don't open PRs that bump the version here by hand; bump in the source repo and the formula follows.

For structural changes to the formula itself (deps, install logic, livecheck, etc.), edit the template at [`rustunnel/.github/homebrew/rustunnel.rb.template`](https://github.com/joaoh82/rustunnel/blob/main/.github/homebrew/rustunnel.rb.template) and the next release will render it here.
