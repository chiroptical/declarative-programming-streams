let
  pkgs = import ./generate-readme/pkgs.nix {};
in
  pkgs.mkShell {
    buildInputs = [ pkgs.jq ];
  }
