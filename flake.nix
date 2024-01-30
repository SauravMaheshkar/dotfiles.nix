{
	description = "Personal Development Environment.";

	inputs = {
		darwin.inputs.nixpkgs.follows = "nixpkgs";
		darwin.url = "github:lnl7/nix-darwin";
		home-manager.inputs.nixpkgs.follows = "nixpkgs";
		home-manager.url = "github:nix-community/home-manager/release-23.11";
		nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
	};

	outputs = inputs@{ self, darwin, home-manager, nixpkgs, ... }:
		let
			username = "saurav";
			darwin-system = import ./system/darwin.nix { inherit inputs username; };
		in
		{
			darwinConfigurations = {
				aarch64 = darwin-system "aarch64-darwin";
			};
		};
}
