{
  # Description
  description = "Paginated's NixOS Configuration";

  # Inputs
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # Outputs
  outputs = {
    self,
    nixvim,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    # System architecture
    system = "x86_64-linux";

    # User account name
    user = "luna";
  in {
    # Set Alejandra as the Nix formatter
    formatter.${system} = nixpkgs.legacyPackages.${system}.alejandra;

    # Set NixOS configuration for the host
    nixosConfigurations.home = nixpkgs.lib.nixosSystem {
      inherit system;

      # Special args to pass to all the modules
      specialArgs = {inherit inputs system user;};

      # Modules
      modules = [
        ./nixos/configuration.nix
        nixvim.nixosModules.nixvim
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = {inherit inputs system user;};

            # Set Home Manager configuration for the user
            users.${user} = import ./nixos/home.nix;
          };
        }
      ];
    };
  };
}
