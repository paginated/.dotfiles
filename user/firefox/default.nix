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
    policies = {
      DisablePocket = true;
      OverrideFirstRunPage = "";
    };
    profiles.default = {
      isDefault = true;
      settings = {
        # Disable irritating first run stuff
        # Source: https://github.com/Misterio77/nix-config/blob/main/home/gabriel/features/desktop/common/firefox.nix#L32-L45
        "browser.rights.3.shown" = true;
        "browser.uitour.enabled" = false;
        "browser.disableResetPrompt" = true;
        "startup.homepage_override_url" = "";
        "browser.download.panel.shown" = true;
        "browser.feeds.showFirstRunUI" = false;
        "browser.shell.checkDefaultBrowser" = false;
        "browser.bookmarks.addedImportButton" = true;
        "trailhead.firstrun.didSeeAboutWelcome" = true;
        "browser.shell.defaultBrowserCheckCount" = 1;
        "browser.startup.homepage_override.mstone" = "ignore";
        "browser.bookmarks.restore_default_bookmarks" = false;
        "browser.messaging-system.whatsNewPanel.enabled" = false;
        "datareporting.policy.dataSubmissionPolicyBypassNotification" = true;

        # Fully disable pocket
        # Source: https://git.sr.ht/~rycee/configurations/tree/master/item/user/firefox.nix#L63-77
        "extensions.pocket.enabled" = false;
        "extensions.pocket.api" = "0.0.0.0";
        "extensions.pocket.site" = "0.0.0.0";
        "extensions.pocket.showHome" = false;
        "extensions.pocket.onSaveRecs" = false;
        "extensions.pocket.loggedOutVariant" = "";
        "extensions.pocket.oAuthConsumerKey" = "";
        "extensions.pocket.onSaveRecs.locales" = "";
        "browser.newtabpage.activity-stream.pocketCta" = "";
        "browser.newtabpage.activity-stream.section.highlights.includePocket" =
          false;
        "services.sync.prefs.sync.browser.newtabpage.activity-stream.section.highlights.includePocket" =
          false;

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
