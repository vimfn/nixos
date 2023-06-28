{ pkgs, username, ... }:

{
  imports = 
 map (program: ../../home-manager/${program}.nix)
    [ "zsh" "git" ];

  home = {
    inherit username;
    homeDirectory = "/home/${username}";
    stateVersion = "23.05";
  };

  programs = {
    vscode.enable = true;
    neovim.enable = true;
  };
  services.gpg-agent.enable = true;
}