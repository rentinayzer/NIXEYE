{
  lib,
  ...
}: {
  imports =
    [
      ./system
      ./users
    ];

  nix.settings.experimental-features = [ 
    "nix-command"
    "flakes"
  ];

  time.timeZone = "Europe/Moscow";
  nixpkgs.config.allowUnfree = true;

  system = { 
    stateVersion = "26.05";
    
    autoUpgrade = {
      enable = true;
      dates = "weekly";
    };
  };

  nix.gc = {
    automatic = true;
    dates = "weekly";

    options = lib.makeDefault "--delete-older-than 14d";
  };
}