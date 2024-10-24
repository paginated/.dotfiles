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
}
