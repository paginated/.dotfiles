{
  # Configure Hyprland
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      "$modShift" = "$mod SHIFT";

      # Monitors
      monitor = [
        "HDMI-A-1,1920x1080@75,0x0,1"
        "eDP-1,disable"
      ];

      # Keybindings
      bind = [
        # Launch apps
        "$mod, Return, exec, foot"
        "$mod, B, exec, firefox"

        # Manage active window
        "$mod, Q, killactive,"

        # Switch to a workspace with $mod + numkey
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"

        # Move active window to a workspace with $mod + shift + numkey
        "$modShift, 1, movetoworkspacesilent, 1"
        "$modShift, 2, movetoworkspacesilent, 2"
        "$modShift, 3, movetoworkspacesilent, 3"
        "$modShift, 4, movetoworkspacesilent, 4"
        "$modShift, 5, movetoworkspacesilent, 5"
      ];
    };
  };
}
