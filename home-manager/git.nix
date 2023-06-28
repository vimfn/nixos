{ ... }: {
  programs.git = {
    enable = true;
    userName = "its-ag";
    userEmail = "arunavagh@outlook.com";
    # signing.signByDefault = true;
    # signing.key = "";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}