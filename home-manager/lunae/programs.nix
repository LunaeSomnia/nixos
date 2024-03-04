{inputs, pkgs, ...}: {
  imports = [
    inputs.ags.homeManagerModules.default
  ];
  programs = {
    ags.enable = true;
    bat.enable = true;
    bottom = {
      enable = true;
      settings.flags = {
        battery = true;
        enable_gpu_memory = true;
      };
    };
    firefox.enable = true;
    gh.enable = true;
    git = {
      enable = true;
      userEmail = "lunaesomnia@protonmail.com";
      userName = "lunaesomnia";
    };
    home-manager.enable = true;
    kitty.enable = true;
    lsd.enable = true;
    obs-studio.enable = true;
    vscode = {
      enable = true;
      extensions = with pkgs.vscode-extensions; [
      
      ];
    };
  };
}
