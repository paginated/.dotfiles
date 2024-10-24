{
  # Configure Hyprland
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      "$modShift" = "$mod SHIFT";

      # Cursor
      cursor = {
        no_hardware_cursors = true;
      };

      # Environment variables
      env = [
        "LIBVA_DRIVER_NAME,nvidia"
        "XDG_SESSION_TYPE,wayland"
        "GBM_BACKEND,nvidia-drm"
        "__GLX_VENDOR_LIBRARY_NAME,nvidia"
      ];

      # Monitors
      monitor = [
        "eDP-1,disable"
        "HDMI-A-1,1920x1080@75,0x0,1"
      ];

      # Dwindle
      dwindle = {
        preserve_split = true;
      };

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

        # Scroll through workspaces with $mod + left / right arrow keys
        "$mod, left, workspace, e-1"
        "$mod, right, workspace, e+1"
      ];

      # Workspaces
      workspace = [
        "1,persistent:true"
        "2,persistent:true"
        "3,persistent:true"
        "4,persistent:true"
        "5,persistent:true"
      ];

      # Misc
      misc = {
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
      };
    };
  };
}
