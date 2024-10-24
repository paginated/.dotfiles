{config, ...}: {
  imports = [
    ./autopairs.nix
    ./cmp.nix
    ./colorizer.nix
    ./conform.nix
    ./indent-blankline.nix
    ./lsp.nix
    ./lspkind.nix
    ./lualine.nix
    ./neogit.nix
    ./neoscroll.nix
    ./nord.nix
    ./oil.nix
    ./telescope.nix
    ./todo-comments.nix
    ./treesitter.nix
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
    opts = {
      nu = true;
      relativenumber = true;

      tabstop = 4;
      shiftwidth = 4;
      softtabstop = 4;
      expandtab = true;

      undofile = true;
      undodir = "${config.home.homeDirectory}/.vim/undodir";

      signcolumn = "yes";
    };
    keymaps = [
      {
        key = "<Tab>";
        mode = ["n"];
        action = "<CMD>bn<CR>";
        options = {
          desc = "Switch to next buffer";
        };
      }
      {
        key = "<S-Tab>";
        mode = ["n"];
        action = "<CMD>bp<CR>";
        options = {
          desc = "Switch to previous buffer";
        };
      }
      {
        key = "<C-q>";
        mode = ["n"];
        action = "<CMD>bd<CR>";
        options = {
          desc = "Close the current buffer";
        };
      }
    ];
  };
}
