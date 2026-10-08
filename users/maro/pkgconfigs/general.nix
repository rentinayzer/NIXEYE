{
  pkgs,
  inputs,
  ...
}:{
  hm-maro.home.packages = with pkgs; [
    inputs.helium.packages.${pkgs.system}.default
  ];
}