{pkgs, ...}: {
  users.users.lunae = {
    isNormalUser = true;
    description = "lunae";
    extraGroups = ["networkmanager" "wheel"];
    packages = with pkgs; [
      spotify
    ];
  };
}
