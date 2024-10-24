{pkgs, ...}: {
  # Configure Treesitter
  programs.nixvim.plugins.treesitter = {
    enable = true;
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      go
      json
      lua
      make
      markdown
      nix
      python
      regex
      rust
      toml
    ];
    settings = {
      highlight = {
        enable = true;
      };
    };
  };
}
