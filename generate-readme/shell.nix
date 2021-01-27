{ pkgs ? import ./pkgs.nix {} }:

let
  haskellPackages = (hp: with hp; [
    aeson
    parsec
  ]);

  ghc = pkgs.haskell.packages.ghc884.ghcWithPackages haskellPackages;

in
  pkgs.mkShell {
    buildInputs = [
      ghc
      pkgs.cabal-install
    ];
  }
