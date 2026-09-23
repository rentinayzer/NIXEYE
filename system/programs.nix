{
  inputs,
  pkgs,
  ...
}:{
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
      package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
      portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    };
  };
}