{
  imports =
    [
      ./hardware-configuration.nix
      ./system
      ./users
    ];

  nix.settings.experimental-features = [ 
    "nix-command"
    "flakes"
  ];

  time.timeZone = "Europe/Moscow";
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "26.05";
}