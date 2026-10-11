{
  description = "NixOS Hyprland";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    hyprland = { url = "github:hyprwm/hyprland"; inputs.nixpkgs.follows = "nixpkgs"; };
    home-manager = { url = "github:nix-community/home-manager"; inputs.nixpkgs.follows = "nixpkgs"; };
    helium = { url = "github:amaanq/helium-flake"; inputs.nixpkgs.follows = "nixpkgs"; };
    zapret-nixos = { url = "github:playreaver/zapret-nixos"; inputs.nixpkgs.follows = "nixpkgs";}; 
    nixcord = { url = "github:4evy/nixcord"; inputs.nixpkgs.follows = "nixpkgs"; };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    home-manager,
    hyprland,
    helium,
    zapret-nixos,
    nixcord,
    ...
  }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs;};
      modules = [
        ./configuration.nix	
        ./hardware-configuration.nix
        home-manager.nixosModules.home-manager
        (nixpkgs.lib.mkAliasOptionModule [ "hm-maro" ] [ "home-manager" "users" "maro" ])
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = { inherit inputs; };
          home-manager.backupFileExtension = "hmbp";
        }
        zapret-nixos.nixosModules.default
      ];
    };
  };
}
