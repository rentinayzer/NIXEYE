{
  inputs,
  ...
}:{
  hm-maro.imports = [ inputs.nixcord.homeModules.nixcord ];

  hm-maro.programs.nixcord = {
    enable = true;
    discord.vencord.enable = true;
  };
}