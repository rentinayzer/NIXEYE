{
  pkgs,
  ...
}:{
  services = {

    upower = { enable = true; };

    pipewire = {
      enable = true;
      pulse = { enable = true; };
    };

    greetd = {
      enable = true;
      settings = {
        default_session = {
          command = "${pkgs.tuigreet}/bin/tuigreet --remember --remember-user-session";
        };
      };
    };

    zapretNixos = {
      enable = true;
      
      presets = { discord = true; cloudflare = true; telegram = true; youtube = true; };
      queueNum = 200;

      desync = "multidisorder";
      splitPos = "1,sniext+1,host+1,midsld-2,midsld,midsld+2,endhost-1";
    };
  };
}