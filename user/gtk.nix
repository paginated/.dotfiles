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
    cursorTheme = {
      size = 16;
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
    };
  };
}
