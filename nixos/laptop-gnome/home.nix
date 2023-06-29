{ pkgs, username, ... }:

{
  imports = [
    ../../desktop-env/gnome/home.nix
  ]
  ++ map (program: ../../home-manager/${program}.nix)
    [ "zsh" "git"];

  home = {
    inherit username;
    homeDirectory = "/home/${username}";
    packages = with pkgs; [
      brave
      rustup
      celluloid
      nodePackages_latest.pnpm
      telegram-desktop
      obs-studio
      neofetch
      nodejs
      python3
    ];
    stateVersion = "23.05";
  };

  programs = {
    neovim.enable = true;
    exa = {
      enable = true;
      enableAliases = true;
    };
  };
  services.gpg-agent.enable = true;
}
