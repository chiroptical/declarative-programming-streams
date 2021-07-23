import (builtins.fetchGit {
  # Descriptive name to make the store path easier to identify
  name = "nixos-unstable";
  url = "https://github.com/nixos/nixpkgs";
  # Commit hash for nixos-unstable as of 2021-07-22
  # `git ls-remote https://github.com/nixos/nixpkgs nixos-unstable`
  ref = "refs/heads/nixos-unstable";
  rev = "16105403bdd843540cbef9c63fc0f16c1c6eaa70";
})
