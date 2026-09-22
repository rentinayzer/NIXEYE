{
  pkgs,
  ...    
}: {
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
  ];

  environment.pathsToLink = [ "/share/applications" "/share/xdg-desktop-portal" ];
}