{
  # Configure Foot
  programs.foot = {
    enable = true;
    settings = {
      main = {
        term = "xterm-256color";

        font = "SauceCodePro Nerd Font:size=10.2:style=SemiBold";
        font-bold = "SauceCodePro Nerd Font:size=10.2:style=Bold";
        font-italic = "SauceCodePro Nerd Font:size=10.2:style=Italic";
        font-bold-italic = "SauceCodePro Nerd Font:size=10.2:style=Bold,Italic";
        dpi-aware = true;
        line-height = 19;
        underline-offset = 19;
      };
    };
  };
}
