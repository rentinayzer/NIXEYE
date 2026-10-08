{
  pkgs,
  ...
}: {
  users.users.maro = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
      kitty
      hyprpaper
      rofi
      thunar
      wl-clipboard
      neovim
      fastfetch
      quickshell
      matugen
      hypridle
      yazi
      obsidian
      prismlauncher
      cava
      hyprshot
      libreoffice
      vscode
      llvmPackages_23.clang
      llvmPackages_23.clang-tools
      llvmPackages_23.lld
    ];
  };

  hm-maro.home.stateVersion = "26.05";
}