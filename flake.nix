{
  description = "idk what to write here";


  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";
  };
  outputs = imported-modules:
    let
      username = "ag";
      system = "x86_64-linux";
      pkgs =
        import
          imported-modules.nixpkgs
          {
            inherit system;
            config.allowUnfree = true;
          };
      custom-pkgs = import ./pkgs
        {
          inherit pkgs;
        };
    in
    {
      nixosConfigurations = (
        import ./nixos {
          inherit imported-modules username system;
          pkgs = pkgs // custom-pkgs;
        }
      );
      devShells.${system}.default =
        pkgs.mkShell {
          packages = with pkgs; [
            nil
            nixpkgs-fmt
          ];
        };
      templates = import ./templates;
    };

}
