{
  pkgs,
  ...
}:{
  programs = {
    helium = { 
      enable = true;
      package = pkgs.helium;
    };
  };
}