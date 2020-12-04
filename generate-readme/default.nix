{ mkDerivation, aeson, base, parsec, stdenv, text }:
mkDerivation {
  pname = "generate-readme";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ aeson base parsec text ];
  license = "unknown";
  hydraPlatforms = stdenv.lib.platforms.none;
}
