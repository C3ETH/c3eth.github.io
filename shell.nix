let 
    pkgs = import <nixpkgs> {};
in
    pkgs.mkShell {
        name = "c3eth doks";
        packages = with pkgs; [
            nodejs
            hugo
        ];
    }
