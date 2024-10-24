{
  # Configure Todo Comments
  programs.nixvim.plugins.todo-comments = {
    enable = true;
    keymaps = {
      todoTelescope = {
        key = "<leader>td";
      };
    };
  };
}
