{
  hm-maro.programs.quickshell = {
    enable = true;
    
    activeConfig = "EYESHELL";
    configs = { EYESHELL = ../dotfiles/quickshell/EYESHELL; };
    systemd = { enable = true; };
  };
}
