# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{outputs, ...}: {
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    outputs.nixosModules.commonConfiguration
  ];

  networking.hostName = "lunae-pc";

  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = true;
    };
  };

  # Enable the X11 server for gnome
  services.xserver.enable = true;
  
  # Enable gnome
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Disable power profiles daemon from gnome
  services.power-profiles-daemon.enable = false;

  # Disable pulseaudio
  hardware.pulseaudio.enable = false;
}
