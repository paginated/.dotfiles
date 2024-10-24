{config, ...}: {
  # Configure SSH
  programs.ssh = {
    enable = true;
    matchBlocks = {
      "github.com" = {
        identityFile = "${config.home.homeDirectory}/.ssh/paginated";
        identitiesOnly = true;
      };
    };
  };
}
