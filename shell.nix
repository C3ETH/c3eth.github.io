{pkgs}:
pkgs.mkShell {
        packages = with pkgs; [
            nodejs
            hugo
        ];
  shellHook = ''
    npm install
    npm run start
  '';
}
