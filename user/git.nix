{config, ...}: {
  # Configure Git
  programs.git = {
    enable = true;
    userName = "paginated";
    userEmail = "paginated.me@gmail.com";
    extraConfig = {
      gpg.format = "ssh";
      commit.gpgsign = true;
      user.signingkey = "${config.home.homeDirectory}/.ssh/paginated.pub";

      init.defaultBranch = "master";
      push.autoSetupRemote = true;
    };
  };
}
