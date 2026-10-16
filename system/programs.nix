{
  inputs,
  pkgs,
  ...
}:{
  nixpkgs.overlays = [ inputs.millennium.overlays.default ];

  programs = {
    firefox = { enable = true; };

    hyprland = {
      enable = true;
      xwayland = { enable = true; };
      withUWSM = false;
      package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
      portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    };

    nh = {
      enable = true;
      flake = "/etc/nixos/NIXEYE";
    };

    steam = { 
      enable = true; 
      package = pkgs.millennium-steam;
    };

    throne = { 
      enable = true;
      tunMode = { enable = true; };
    };
  };
}
