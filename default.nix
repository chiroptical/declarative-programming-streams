let
  generate-readme = (import ./generate-readme/default.nix {}).generate-readme;
  pkgs = import ./generate-readme/pkgs.nix {};
  readmeMd = ./README.md;
  streamersJson = ./streamers.json;
  notCurrentlyActiveStreamersJson = ./not-currently-active.json;
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
      cp ${generate-readme.outPath}/bin/generate-readme $out
    '';
    shellHook = ''
      ${generate-readme.outPath}/bin/generate-readme ${readmeMd} ${streamersJson} ${notCurrentlyActiveStreamersJson} > $out/README.md
    '';
  }
