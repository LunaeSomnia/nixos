{
  outputs,
  config,
  ...
}: {
  nixpkgs = {
    config = {
      allowUnfree = true;
      permittedInsecurePackages = [];
    };
    overlays = [outputs.overlays.additions];
  };
}
