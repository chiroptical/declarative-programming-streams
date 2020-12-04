let
  pkgs = import ./pkgs.nix {};
in
  pkgs.haskellPackages.callPackage ./default.nix {}
