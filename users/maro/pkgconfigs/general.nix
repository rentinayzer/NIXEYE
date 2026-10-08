{
  pkgs,
  inputs,
  ...
}:{
  hm-maro.packages = with pkgs; [
    inputs.helium.packages.${pkgs.system}.default
  ];
}