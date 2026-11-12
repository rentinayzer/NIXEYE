{
  lib,
  ...
}: {
  imports =
    [
      ./system
      ./users
    ];

  nix = { 
    settings = { 
      experimental-features = [ 
        "nix-command"
        "flakes"
      ];

      auto-optimise-store = true;

    };

    gc = {
      automatic = true;
      dates = "weekly";

      options = lib.mkDefault "--delete-older-than 14d";
    };
  };

  time.timeZone = "Europe/Moscow";
  nixpkgs.config.allowUnfree = true;

  system = { 
    stateVersion = "26.05";
    
    autoUpgrade = {
      enable = true;
      dates = "weekly";
    };
  };
}
