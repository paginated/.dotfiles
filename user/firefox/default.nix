{
  config,
  pkgs,
  ...
}: let
  nordic = pkgs.fetchFromGitHub {
    owner = "EliverLara";
    repo = "firefox-nordic-theme";
    rev = "287c6b4a94361a038d63f2fa7b62f9adfc08fe02";
    hash = "sha256-6ccxZKVsbR2VQr5M3GpbZt3Nfe5RaroWQdYx/aiWB64=";
  };
in {
  # Configure Firefox
  programs.firefox = {
    enable = true;
    profiles.default = {
      isDefault = true;
      settings = {
        # Auto install extensions
        "extensions.autoDisableScopes" = 0;
      };
      extensions = with (import ./addons.nix {inherit (pkgs) lib stdenv fetchurl;}); [
        touch-vpn
        sponsorblock
        ublock-origin
        privacy-badger
      ];
      extraConfig = builtins.readFile "${nordic}/configuration/user.js";
    };
  };

  # Source theme
  home.file.".mozilla/firefox/${config.programs.firefox.profiles.default.path}/chrome".source = nordic;
}
