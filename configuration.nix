{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.useOSProber = true;

  networking.hostName = "laptopcopter";
  networking.networkmanager.enable = true;

  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "fr";
    defaultLocale = "fr_FR.UTF-8";
  };

  time.timeZone = "Europe/Paris";

  environment.systemPackages = with pkgs; [
    wget neovim firefox networkmanagerapplet i3lock tilda git htop keepassxc unzip signal-desktop mpv youtube-dl homebank mutt gparted
  ];

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "fr";

  # Enable touchpad support.
  services.xserver.libinput = {
    enable = true;
    naturalScrolling = true;
  };

  # Enable the XFCE Desktop Environment.
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.xfce.enable = true;

  users.users.deluvi = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
  };

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.03"; # Did you read the comment?

  hardware.cpu.intel.updateMicrocode = true;

  nixpkgs.config.allowUnfree = true; # For Intel pilots
  hardware.opengl.enable = true;
  hardware.opengl.extraPackages = [
    pkgs.intel-ocl
    pkgs.vaapiIntel
    pkgs.vaapiVdpau
    pkgs.libvdpau-va-gl
  ];
}
