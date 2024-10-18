{pkgs, ...}: {
  # Configure Neovim
  programs.nixvim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    defaultEditor = true;
    globals = {
      mapleader = " ";
    };
  };

  # Extra packages required by neovim
  home.packages = with pkgs; [
    wl-clipboard
  ];
}
