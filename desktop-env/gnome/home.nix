{ ... }: {
  imports = [
    ./prefs.nix
    ./extensions.nix
  ];
  services.gpg-agent.pinentryFlavor = "gnome3";
  dconf.enable = true;
}
