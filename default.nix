let
  generate-readme = import ./generate-readme/release.nix;
  pkgs = import ./generate-readme/pkgs.nix {};
  readmeMd = ./README.md;
  streamersJson = ./streamers.json;
in
  pkgs.stdenv.mkDerivation {
    name = "run-generate-readme";
    phases = [
      "installPhase"
      "shellHook"
    ];
    installPhase = ''
      mkdir -p $out
      cp ${readmeMd} ${streamersJson} $out
    '';
    shellHook = ''
      ${generate-readme.outPath}/bin/generate-readme ${readmeMd} ${streamersJson} > $out/README.md
    '';
  }
