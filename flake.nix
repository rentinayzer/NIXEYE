{
  description = "NixOS Hyprland";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    hyprland = { url = "github:hyprwm/hyprland"; inputs.nixpkgs.follows = "nixpkgs"; };
    home-manager = { url = "github:nix-community/home-manager"; inputs.nixpkgs.follows = "nixpkgs"; };
    helium = { url = "github:amaanq/helium-flake"; inputs.nixpkgs.follows = "nixpkgs"; };
    zapret2-nix.url = "github:ZenonEl/zapret2-nix";
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    home-manager,
    hyprland,
    helium,
    zapret2-nix
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
        zapret2-nix.nixosModules.default
        {
          services.zapret2 = {
            enable = true;
            presets = [ "youtube" "discord" ];
            defaultPreset = "discord";
          };
        }
      ];
    };
  };
}
