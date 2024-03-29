{config, ...}: {
  # make stuff work on wayland
  home.sessionVariables = {
    QT_QPA_PLATFORM = "wayland";
    SDL_VIDEODRIVER = "wayland";
    XDG_SESSION_TYPE = "wayland";
  };

  xdg = {
    configFile = {
      "ags" = {
        recursive = true;
        source = ./dotfiles/ags;
      };
      #"astronvim" = {
        #source = ./dotfiles/.config/astronvim;
        #recursive = true;
      #};
      #"dolphinrc".source = ./dotfiles/.config/dolphinrc;
      #"fish" = {
        #recursive = true;
        #source = ./dotfiles/.config/fish;
      #};
      #"gtk-4.0/assets".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
      #"gtk-4.0/gtk.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
      #"gtk-4.0/gtk-dark.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";
      "hypr/hyprland.conf".source = ./dotfiles/hypr/hyprland.conf;
      #"hypr/scripts/autoclicker.sh".source = ./dotfiles/.config/hypr/scripts/autoclicker.sh;
      #"hypr/scripts/pywal.sh".source = ./dotfiles/.config/hypr/scripts/pywal.sh;
      #"hypr/scripts/wine.sh".source = ./dotfiles/.config/hypr/scripts/wine.sh;
      #"hypr/scripts/workspaces".text = ''
        ##!/usr/bin/env bash
        #hypr-workspaces $@
      #'';
      #"hypr/scripts" = {
        #recursive = true;
        #source = ./dotfiles/.config/hypr/scripts;
      #};
      #"kcalcrc".source = ./dotfiles/.config/kcalcrc;
      #"kdeglobals".source = ./dotfiles/.config/kdeglobals;
      "kitty" = {
        source = ./dotfiles/kitty;
        recursive = true;
      };
      #"Kvantum" = {
        #recursive = true;
        #source = ./dotfiles/.config/Kvantum;
      #};
      #"lsd/config.yaml".source = ./dotfiles/.config/lsd/config.yaml;
      #"mimeapps.list".source = ./dotfiles/.config/mimeapps.list;
      #"mpv" = {
        #recursive = true;
        #source = ./dotfiles/.config/mpv;
      #};
      #"neofetch/config.conf".source = ./dotfiles/.config/neofetch/config.conf;
      #"pipewire/pipewire.conf.d/99-input-denoising.conf".source = ./dotfiles/.config/pipewire/pipewire.conf.d/99-input-denoising.conf;
      #"ranger" = {
        #source = ./dotfiles/.config/ranger;
        #recursive = true;
      #};
      #"starship.toml".source = ./dotfiles/.config/starship.toml;
      #"swaylock" = {
        #source = ./dotfiles/.config/swaylock;
        #recursive = true;
      #};
      #"swaync" = {
        #recursive = true;
        #source = ./dotfiles/.config/swaync;
      #};
      #"wal" = {
        #source = ./dotfiles/.config/wal;
        #recursive = true;
        #executable = true;
      #};
      #"wofi" = {
        #recursive = true;
        #source = ./dotfiles/.config/wofi;
      #};
    };
    enable = true;
    userDirs = {
      createDirectories = true;
      desktop = "${config.home.homeDirectory}/Desktop";
      documents = "${config.home.homeDirectory}/Documents";
      download = "${config.home.homeDirectory}/Downloads";
      enable = true;
      music = "${config.home.homeDirectory}/Music";
      pictures = "${config.home.homeDirectory}/Pictures";
      publicShare = "${config.home.homeDirectory}/Public";
      templates = "${config.home.homeDirectory}/Templates";
      videos = "${config.home.homeDirectory}/Videos";
    };
  };
}
