{ ... }: {
  imports = [
    ./prefs.nix
    ./extensions.nix
    ./keybinds.nix
  ];
  services.gpg-agent.pinentryFlavor = "gnome3";
  dconf.enable = true;
}
