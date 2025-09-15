let
  sources = import ./nix/sources.nix;

  hello = pkgs.writeShellScriptBin "hello" ''
    echo "Good day from the victorpkgs Nix channel overlay!"
  '';

  pkgs = import sources.nixpkgs {
    overlays = [
      (self: super: {
        inherit hello;
      })
    ];
  };
in pkgs
