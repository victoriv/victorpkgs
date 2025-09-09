let
  # Import sources
  sources = import ./nix/sources.nix;

# Return that specific nixpkgs
in sources.nixpkgs
