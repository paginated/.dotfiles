{
  # Configure Oil
  programs.nixvim.plugins.oil = {
    enable = true;
    settings = {
      delete_to_trash = true;
      skip_confirm_for_simple_edits = true;
      experimental_watch_for_changes = true;
    };
  };

  # Keymaps
  programs.nixvim.keymaps = [
    {
      key = "-";
      mode = ["n"];
      action = "<CMD>Oil<CR>";
      options = {
        desc = "Open parent directory";
      };
    }
  ];
}
