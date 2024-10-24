{pkgs, ...}: {
  # Configure GTK
  gtk = {
    enable = true;
    theme = {
      name = "Nordic";
      package = pkgs.nordic;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-nord.override {
        accent = "frostblue1";
      };
    };
  };
}
