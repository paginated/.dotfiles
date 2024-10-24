{
  imports = [
    ./nord.nix
    ./oil.nix
    ./telescope.nix
    ./web-devicons.nix
  ];

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
}
