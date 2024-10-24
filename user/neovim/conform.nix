{
  # Configure Conform
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        go = ["goimports" "gofmt"];
        nix = ["alejandra"];
        rust = ["rustfmt"];
        python = ["ruff_format"];
      };
    };
  };

  # Keymaps
  programs.nixvim.keymaps = [
    {
      key = "<leader>ff";
      mode = ["n" "v"];
      action.__raw = ''function() require("conform").format({ async = true }) end'';
      options = {
        desc = "Format current buffer";
      };
    }
  ];
}
