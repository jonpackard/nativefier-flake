{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {
      devShells.x86_64-linux.default = pkgs.mkShell {
        packages = [
          pkgs.nodejs
        ];
        
        shellHook = ''
          printf "\n*** Note: On the first run, it can take a while to download packages! ***\n" && npm install -i nativefier && alias nativefier="./node_modules/.bin/nativefier" && export PS1="\n\[\033[1;32m\][nix-shell-nativefier:\w]\$\[\033[0m\]" && printf "\n*** Nativefier installation complete. Created alias "nativefier" that will launch nativefier from this path. ***\n"
        '';

      };

      # Enable npm
      pkgs.options.programs.npm.enable = true;
      
    };
}
