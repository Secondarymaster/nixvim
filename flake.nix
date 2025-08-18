{
  description = "Simple nixvim config with inheritance-based profiles";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  
  outputs = { self, nixpkgs, nixvim, ... }@inputs:
  let
    systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
    forAllSystems = nixpkgs.lib.genAttrs systems;
    
    # Helper to create nixvim configurations for any system
    makeNixvimFor = system: modules: 
      nixvim.legacyPackages.${system}.makeNixvimWithModule {
        pkgs = nixpkgs.legacyPackages.${system};
        module = { imports = modules; };
      };
  in {
    # Only expose complete, ready-to-use profiles
    nixvimModules = {
      profiles = {
        default = ./modules/profiles/default.nix;
        nix = ./modules/profiles/nix.nix;
      };
    };
    
    # Pre-built packages for all systems
    packages = forAllSystems (system: {
      # Default editor with basic functionality
      default = makeNixvimFor system [ ./modules/profiles/default.nix ];
      
      # Nix-focused editor (inherits default + adds nix support)
      nix = makeNixvimFor system [ ./modules/profiles/nix.nix ];
    });
    
    # Apps for easy running
    apps = forAllSystems (system: {
      default = {
        type = "app";
        program = "${self.packages.${system}.default}/bin/nvim";
      };
      nix = {
        type = "app";
        program = "${self.packages.${system}.nix}/bin/nvim";
      };
    });
    
    # Development shell for working on the config
    devShells = forAllSystems (system: {
      default = nixpkgs.legacyPackages.${system}.mkShell {
        buildInputs = with nixpkgs.legacyPackages.${system}; [
          nixfmt-rfc-style
          nil
        ];
        shellHook = ''
          echo " Nixvim Development Environment"
          echo ""
          echo "Available commands:"
          echo "  nix run .        # Test default profile"
          echo "  nix run .#nix    # Test nix profile"
          echo "  nixfmt **/*.nix  # Format all nix files"
          echo ""
        '';
      };
    });
    
    # Formatter for all systems
    formatter = forAllSystems (system: 
      nixpkgs.legacyPackages.${system}.nixfmt-rfc-style
    );
  };
}