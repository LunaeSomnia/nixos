{pkgs, ...}: {
  gtk = {
    cursorTheme.name = "Bibata_Modern_Classic";
    enable = true;
    iconTheme.name = "papirus-icon-theme";
    # theme = {
    #   name = "Catppuccin-Mocha-Standard-Mauve-Dark";
    #   package = pkgs.catppuccin-gtk.override {
    #     accents = ["mauve"];
    #     variant = "mocha";
    #   };
    # };
  };

  # qt.style.name = "kvantum-dark";
}
