{
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
          user = maro;
        };
      };
    };
  };
}