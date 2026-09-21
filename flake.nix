{
  description = "NixOS Hyprland";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = { url = "github:nix-community/home-manager"; inputs.nixpkgs.follows = "nixpkgs"; };
    hyprland = { url = "github:hyprwm/hyprland"; inputs.nixpkgs.follows = "nixpkgs"; };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    home-manager, 
    hyprland,
    ...
  }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86-64-linux";
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
      ];
    };
  };
}