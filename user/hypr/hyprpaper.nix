let
  # Path to the wallpaper
  wallpaper = ../../wallpapers/minimal.png;
in {
  # Configure Hyprpaper
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;

      preload = ["${wallpaper}"];
      wallpaper = ["HDMI-A-1,${wallpaper}"];
    };
  };
}
