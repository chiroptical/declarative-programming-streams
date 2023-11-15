{ pkgs ? import ./pkgs.nix { } }:
let
  hsPkgs = pkgs.haskell.packages.ghc94;
  generate-readme = hsPkgs.callCabal2nix "generate-readme" ./. { };
  shell = hsPkgs.shellFor {
    packages = ps: [ generate-readme ];
    buildInputs = with pkgs; [ cabal-install ];
  };
in
{
  inherit shell generate-readme;
}
