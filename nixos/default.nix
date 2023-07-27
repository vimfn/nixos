{ imported-modules, system, username, pkgs, ... }:
{
  laptop-gnome = import ./laptop-gnome {
    inherit (imported-modules.nixpkgs) lib;
    inherit imported-modules pkgs username system;
  };
 laptop-hyprland = import ./laptop-hyprland {
    inherit (imported-modules.nixpkgs) lib;
    inherit imported-modules pkgs username system;
  };
  laptop-i3 = import ./laptop-i3 {
    inherit (imported-modules.nixpkgs) lib;
    inherit imported-modules pkgs username system;
  };
}