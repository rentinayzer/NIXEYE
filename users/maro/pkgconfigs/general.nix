{
  pkgs,
  ...
}:{
  hm-maro.programs = {
    helium = { 
      enable = true;
      package = pkgs.helium;
    };
  };
}