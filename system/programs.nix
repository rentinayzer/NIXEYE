{
  programs = {
    firefox = { enable = true; };

    steam = { enable = true; };

    nh = {
      enable = true;
      flake = "/etc/nixos/NIXEYE";
    };

    hyprland = {
      enable = true;
      xwayland = { enable = true; };
      withUWSM = true;
    };
  };
}