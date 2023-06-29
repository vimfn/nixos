{ imported-modules, system, username, ... }:
let
  pkgs = import imported-modules.nixpkgs
    {
      inherit system;
      config.allowUnfree = true;
    };
in
{
  laptop-gnome = import ./laptop-gnome {
    inherit (imported-modules.nixpkgs) lib;
    inherit imported-modules pkgs username system;
  };
 laptop-hyprland = import ./laptop-hyprland {
    inherit (imported-modules.nixpkgs) lib;
    inherit imported-modules pkgs username system;
  };
}