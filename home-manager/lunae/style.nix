{pkgs, ...}: {
  gtk = {
    cursorTheme.name = "Bibata-Modern-Ice";
    enable = true;
    iconTheme.name = "papirus-icon-theme";
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome.gnome-themes-extra;
    };
  };

  qt = {
    enable = true;
    platformTheme = "gnome";
    style.name = "adwaita-dark";
  };
}
