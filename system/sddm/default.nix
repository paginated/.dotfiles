{
  # Configure XServer
  services.xserver = {
    enable = true;
  };

  # Configure SDDM
  services.displayManager.sddm = {
    enable = true;
  };
}
