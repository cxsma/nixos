{
  inputs = {
    nixpkgs = {
      type = "github";
      owner = "nixos";
      repo = "nixpkgs";
      ref = "nixos-unstable";
    };
    home-manager = {
      type = "github";
      owner = "nix-community";
      repo = "home-manager";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
    disko = {
      type = "github";
      owner = "nix-community";
      repo = "disko";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
    flakelight = {
      type = "github";
      owner = "nix-community";
      repo = "flakelight";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
  };
  outputs = inputs: inputs.flakelight ./. { inherit inputs; };
}
