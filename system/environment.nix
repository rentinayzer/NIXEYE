{
  pkgs,
  ...    
}: {
  environment = {
    systemPackages = with pkgs; [
      vim
      wget
      git
      ripgrep
      favnyr.packages.${pkgs.stdenv.hostPlatformsystem}.default
    ];
  };
}