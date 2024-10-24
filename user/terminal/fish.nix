{
  # Configure Fish
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      # Disable greeting
      set fish_greeting

      # Enable vi keybindings
      fish_vi_key_bindings
    '';
  };
}
