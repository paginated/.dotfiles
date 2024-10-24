{
  # Configure LSP
  programs.nixvim.plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      nixd = {
        enable = true;
      };
      gopls = {
        enable = true;
      };
      pyright = {
        enable = true;
      };
      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
    };
  };
}
