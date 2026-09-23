{
  pkgs,
  ...    
}: {
  environment = {
    pathsToLink = [ "/share/applications" "/share/xdg-desktop-portal" ];

    systemPackages = with pkgs; [
      vim
      wget
      git
    ];
  };
}