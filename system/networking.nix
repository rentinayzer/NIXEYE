{
  networking = {
    hostName = "nixos";
    networkmanager = { enable = true; };
    nftables.enable = true;
  };
}