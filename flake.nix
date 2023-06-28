{
  description = "idk what to write here";


  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = imported-modules:
    let
      username = "ag";
    in
    {
      nixosConfigurations = (
        import ./nixos {
          inherit imported-modules username;
          system = "x86_64-linux";
        }
      );
    };

}
