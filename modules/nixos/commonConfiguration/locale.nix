_: let

  ENG = "en_US.UTF-8";

  in {
  time.timeZone = "Europe/Madrid";

  i18n.defaultLocale = ENG;

  i18n.extraLocaleSettings = {
    LC_ADDRESS = ENG;
    LC_IDENTIFICATION = ENG;
    LC_MEASUREMENT = ENG;
    LC_MONETARY = ENG;
    LC_NAME = ENG;
    LC_NUMERIC = ENG;
    LC_PAPER = ENG;
    LC_TELEPHONE = ENG;
    LC_TIME = ENG;
  };

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  console.keyMap = "us";
}
