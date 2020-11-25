{ pkgs ? import ./pkgs.nix }:
let
  nix-pre-commit-hooks = import (builtins.fetchTarball "https://github.com/cachix/pre-commit-hooks.nix/tarball/master");
  
  nix-pre-commit-hooks-with-build-readme = nix-pre-commit-hooks // {
    config = nix-pre-commit-hooks.config {
      hooks = nix-pre-commit-hooks.config.hooks // {
        build-readme = {
          name = "build README.md";
          # description = "...";
          entry = "${pkgs.stack}/bin/stack generate.hs";
        };
      };
    };
  };

in {
  pre-commit-check = nix-pre-commit-hooks-with-build-readme.run {
    src = ./.;
    hooks = {
      ormolu.enable = true;
      build-readme.enable = true;
    };
  };
}
