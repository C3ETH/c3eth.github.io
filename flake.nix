{
  description = "A nix building c3eth node website.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-utils.inputs.nixpkgs.follows = "nixpkgs";
    flake-compat.url = "github:edolstra/flake-compat";
    flake-compat.flake = false;
    flake-compat.inputs.nixpkgs.follows = "nixpkgs";
    nix-filter.url = "github:numtide/nix-filter";
    npmlock2nix.url = "github:nix-community/npmlock2nix";
    npmlock2nix.flake = false;
  };

  outputs = { self, nixpkgs, flake-utils, flake-compat, npmlock2nix, ... }@inputs:
    flake-utils.lib.eachDefaultSystem ( system:
    let
      pkgs = import nixpkgs { inherit system; };
      inherit (pkgs) lib stdenv;

      # Non-Flake input, so need to import it.
      npmlock2nix = pkgs.callPackages inputs.npmlock2nix {};

      # Fix-up the flake introduced name for nix-filter for consistency.
      nix-filter = inputs.nix-filter.lib;

      # Debugging functions. TODO clean these up a bit to be more useful and able
      # to easily switch debugging on/off.
      traceVal = pkgs.lib.debug.traceVal;
      traceSeq = val: pkgs.lib.debug.traceSeqN 4 val val;
      trace = val: pkgs.lib.debug.traceValSeqN 4 val val;
      log_drv = drv: pkgs.lib.debug.traceSeqN 1 "Dervivation Output: ${drv}" drv;

      # To get good build times it's vitally important to not have to rebuild 
      # derivation needlessly. The way Nix caches things is very simple: if 
      # any input file changed, derivation needs to be rebuild. Use nix-filter
      # to include or exlude files and directories from a derivation build.
      commonFilters = rec {
        npmFiles = ["package-lock.json" "package.json"];
        # testScripts = [(nix-filter.inDirectory "scripts")];
        markdownFiles = [(nix-filter.matchExt "md")];
        readmeFiles = ["README.md" "SECURITY.md" "LICENSE" "CHANGELOG.md" "CODE_OF_CONDUCT.md"];
        nixFiles = [(nix-filter.matchExt "nix")];
        configFiles = [".editorconfig"];        
      };

      # Common derivation arguments used for all builds
      commonArgs =  {
        name = "c3eth";
        root = ./.;
      };

      # Use a standard way of naming derivations package names.
      packageName = suffix: commonArgs.name + "-" + suffix;

      # Build and install Hugo Node Packages.
      hugo_and_dependencies = npmlock2nix.node_modules {
        name = packageName "hugo-dependencies";
        # Include only files needed to build antora's node dependencies which are
        # the essentially the package files.
        src =  nix-filter {
          root = commonArgs.root;
          include = commonFilters.npmFiles;
        };
      };

      # Build all the Hugo website dependencies and make them available for development of
      # the website.
      hugo_shell = npmlock2nix.shell {
        name = packageName "hugo-shell";        
        buildInputs = [ hugo_and_dependencies ]; 
        src =  nix-filter {
          root = commonArgs.root; 
          include = commonFilters.npmFiles;
        };
      };

      # Build the Hugo website and run the test server.
      website = npmlock2nix.build {
        name = packageName "website";
        # pname = "blahblah";        
        buildInputs = [ hugo_and_dependencies ]; 
        installPhase = ''
          mkdir -p $out/public
          cp -r node_modules $out
          cp -r public $out
        '';
        # TODO: Fix this up. `nix run` fails to run. npm not in scope to run hugo server
        meta.mainProgram = ''
          export PATH="${hugo_and_dependencies}/bin:$PATH"
          npm run start
        ''; 
        src =  nix-filter {
          root = commonArgs.root;
          exclude = with commonFilters; readmeFiles ++ nixFiles ++ configFiles;
        };
      };

    in {

      packages = { 
        default = website;
      };

      # 'nix run' to symlink node_modules & launch development server:
	    # defaultApp = flake-utils.lib.mkApp { drv = website; };

      devShells.default = hugo_shell;

    });
  }