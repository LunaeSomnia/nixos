{
  outputs,
  pkgs,
  ...
}: {
  imports = [
    ./nixpkgs.nix
    ./programs.nix
    ./services.nix
    ./style.nix
    ./xdg.nix
  ];

  home = {
    file = {
      #".bash_profile".source = ./dotfiles/.bash_profile;
      #".bashrc".source = ./dotfiles/.bashrc;
    };
    homeDirectory = "/home/lunae";
    packages = with pkgs; [
      alejandra
      blueberry
      candy-icons
      catppuccin-cursors.mochaDark
      catppuccin-gtk
      catppuccin-kvantum
      deadnix
      discord
      ffmpeg
      gamemode
      gamescope
      gcc
      gnumake
      hyprpicker
      hyprshot
      jdk17
      lutris
      neofetch
      networkmanagerapplet
      outputs.packages.x86_64-linux.rebuild
      pavucontrol
      polkit-kde-agent
      python3
      qbittorrent
      statix
      steam
      swaylock-effects
      swaynotificationcenter
      swww
      tldr
      unrar
      unzip
      wev
      wl-clipboard
      wl-clip-persist
      wofi
      zip
      prismlauncher
      winetricks
      obsidian
      kitty
      spotify
      bibata-cursors
    ];
    stateVersion = "23.11";
    username = "lunae";
  };
}
