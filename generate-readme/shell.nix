{ pkgs ? import ./pkgs.nix {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.ghc
    pkgs.cabal-install
    pkgs.cabal2nix
  ];
}
