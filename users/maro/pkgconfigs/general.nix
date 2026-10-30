{
  pkgs,
  inputs,
  ...
}:{
  hm-maro.home.packages = with pkgs; [
    inputs.helium.packages.${pkgs.stdenv.hostPlatform.system}.default
    favnyr.packages.${pkgs.stdenv.hostPlatform.system}.default    
  ];
}