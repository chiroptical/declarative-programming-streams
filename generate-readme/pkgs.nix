import (builtins.fetchGit {
  # Descriptive name to make the store path easier to identify
  name = "nixos-unstable";
  url = "https://github.com/nixos/nixpkgs";
  # Commit hash for nixos-unstable as of 2023-11-14
  # `git ls-remote https://github.com/nixos/nixpkgs nixos-unstable`
  ref = "refs/heads/nixos-unstable";
  rev = "e44462d6021bfe23dfb24b775cc7c390844f773d";
})
