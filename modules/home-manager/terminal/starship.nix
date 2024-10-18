{
  # Configure Starship
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      character = {
        error_symbol = "[](bold red)";
        success_symbol = "[](bold green)";
        vimcmd_symbol = "[](bold green)";
        vimcmd_visual_symbol = "[](bold yellow)";
        vimcmd_replace_symbol = "[](bold red)";
        vimcmd_replace_one_symbol = "[](bold red)";
      };
      git_branch = {
        format = "on [$symbol $branch(:$remote_branch)]($style) ";
        symbol = "";
      };
      git_status = {
        format = "([\\[ $all_status$ahead_behind\\]]($style) )";
        style = "bold purple";
        ahead = "[ $count](bold blue) ";
        behind = "[ $count](bold red) ";
        staged = "[ $count](bold green) ";
        deleted = "[ $count](bold red) ";
        renamed = "[ $count](bold green) ";
        stashed = "[ $count](bold red) ";
        diverged = "[ $count](bold red) ";
        modified = "[ $count](bold yellow) ";
        untracked = "[ $count](bold yellow) ";
        conflicted = "[󰞇 $count](bold red) ";
      };
    };
  };
}
