{ ... }:
{
  imports = [
    ../../desktop-env/hyprland/system.nix
    ../laptop/system.nix
    ../laptop/hardware.nix
  ];
  programs.hyprland.enable = true;
}
