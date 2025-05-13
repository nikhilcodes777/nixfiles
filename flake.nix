{
  description = "My Config flake!";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";

      pkgs = import nixpkgs {
        system = system;
        config = {
          # Allow unfree packages
          allowUnfree = true;
        };
      };
    in
    {
      nixosConfigurations = {
        nixos = lib.nixosSystem {
          #system = "x86_64-linux";
          inherit system;
          modules = [ ./configuration.nix ];
        };
      };

      homeConfigurations."nikhil" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        # Specify your home configuration modules here, for example,
        # the path to your home.nix.
        modules = [ ./home.nix ];

        # Optionally use extraSpecialArgs
        # to pass through arguments to home.nix
      };

    };
}
