{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/release-23.11";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.flake-compat.url = "github:edolstra/flake-compat";

  outputs = {nixpkgs, flake-utils, ...}:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
      drv =  pkgs.haskell.packages.ghc98.callCabal2nix "1brc" ./. {};
      shell = pkgs.mkShell {
        packages = [ pkgs.ormolu pkgs.ghcid ];
        inputsFrom = [ drv ];
      };
    in {
      packages."1brc" = drv;
      defaultPackage = drv;
      devShell = shell;
    });
}
