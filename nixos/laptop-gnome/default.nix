{ imported-modules, username, pkgs, lib, system, ... }:

lib.nixosSystem {
  inherit system;
  specialArgs = {
    inherit system pkgs imported-modules username;
  };
  modules = [
    ./hardware.nix
    ./config.nix
  ];
}