{pkgs, ...}: {
  # Configure Nerd Fonts
  fonts.packages = with pkgs; [
    (nerdfonts.override {fonts = ["SourceCodePro"];})
  ];
}
