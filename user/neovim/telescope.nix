{pkgs, ...}: {
  # Configure Telescope
  programs.nixvim.plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>tp" = {
        action = "git_files";
        options = {
          desc = "Telescope git files";
        };
      };
      "<leader>tr" = {
        action = "live_grep";
        options = {
          desc = "Telescope live grep";
        };
      };
    };
  };

  # Additional packages
  home.packages = with pkgs; [
    ripgrep
  ];
}
