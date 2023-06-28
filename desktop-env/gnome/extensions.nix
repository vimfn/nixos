{ pkgs, ... }: {
  home.packages = with pkgs.gnomeExtensions;[
    appindicator
    clipboard-indicator
    blur-my-shell
  ];

  dconf.settings = {
    "org/gnome/shell" = {
      enabled-extensions = [
        "clipboard-indicator@tudmotu.com"
        "appindicatorsupport@rgcjonas.gmail.com"
        "blur-my-shell@aunetx"
      ];
    };

    "org/gnome/shell/extensions/appindicator" = {
      icon-saturation = 2.7755575615628914;
      icon-size = 0;
      legacy-tray-enabled = false;
    };

    "org/gnome/shell/extensions/clipboard-indicator" = {
      history-size = 200;
      move-item-first = true;
    };
  };
}
