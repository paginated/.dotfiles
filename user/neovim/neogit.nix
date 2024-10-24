{
  # Configure Neogit
  programs.nixvim.plugins.neogit = {
    enable = true;
  };

  # Keymaps
  programs.nixvim.keymaps = [
    {
      key = "<Up>";
      mode = ["n"];
      action.__raw = ''function() require("neogit").open() end'';
      options = {
        desc = "Open Neogit";
      };
    }
  ];
}
