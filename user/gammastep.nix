{osConfig, ...}: {
  # Configure Gammastep
  services.gammastep = {
    enable = true;
    provider = "manual";
    latitude = osConfig.location.latitude;
    longitude = osConfig.location.longitude;
    temperature = {
      day = 4000;
      night = 4000;
    };
  };
}
