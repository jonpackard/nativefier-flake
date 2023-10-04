{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {
      devShells.x86_64-linux.default = pkgs.mkShell {
        packages = [
          # Made available on the CLI
          pkgs.nodejs
          pkgs.npm
          # pkgs.python3
        ];
        # RUST_LOG = 1; # Set as environment variable
      };

      # You could also define extra shells or packages here
    };
}
