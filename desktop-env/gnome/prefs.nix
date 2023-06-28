{ ... }: {
  dconf.settings = {
    "org/gnome/desktop/peripherals/touchpad" = {
      disable-while-typing = true;
      speed = 0.20454545454545459;
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };
    "org/gnome/desktop/wm/preferences" = {
      action-middle-click-titlebar = "none";
      title-bar-font = "SF Text Bold Pro 11";
    };
    "org/gnome/desktop/interface" = {
      clock-show-seconds = true;
      clock-show-weekday = true;
      enable-hot-corners = true;
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      monospace-font-name = "JetBrainsMono Nerd Font 10";
      show-battery-percentage = true;
      gtk-theme = "Adwaita-dark";
      font-name = "SF Pro 11";
      document-font-name = "SF Pro 11";
      cursor-size = 48;
      text-scaling-factor = 1.25;
    };
    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      center-new-windows = true;
      dynamic-workspaces = true;
      edge-tiling = true;
    };
    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      sort-column = "name";
      sort-directories-first = true;
    };
    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      sort-column = "name";
      sort-directories-first = true;
    };
    "org/gnome/desktop/sound" = {
      allow-volume-above-100-percent = false;
      event-sounds = false;
      theme-name = "__custom";
    };
  };
}
