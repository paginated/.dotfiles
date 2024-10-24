{
  # Configure Completions
  programs.nixvim.plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      mapping = {
        "<C-e>" = "cmp.mapping.close()";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
      };
      sources = [
        {name = "path";}
        {name = "buffer";}
        {name = "nvim_lsp";}
      ];
    };
  };
}
