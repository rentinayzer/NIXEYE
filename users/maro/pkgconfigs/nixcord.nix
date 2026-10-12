{
  inputs,
  ...
}:{
  hm-maro.imports = [ inputs.nixcord.homeModules.nixcord ];

  hm-maro.programs.nixcord = {
    enable = true;
    vesktop = { enable = false; };
    discord = { 
      enable = true;
      vencord = { enable  = false; };
      equicord = { enable = true; };
      openASAR = { enable = true; };
    };
    config = {
      transparent = true;
      frameless = true;
    };
  };
}