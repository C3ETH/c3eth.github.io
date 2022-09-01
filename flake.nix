{
  description = "A nix building c3eth node website.";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "nixpkgs/e5ada146869589808d804a3430c5a24a025c9040";
  };

  outputs = inputs@{ self, nixpkgs, flake-utils }:
    (flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          devShell = import ./shell.nix {inherit pkgs;};
        }
      )
    );
}