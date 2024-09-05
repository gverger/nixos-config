# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

# NixOS-WSL specific options are documented on the NixOS-WSL repository:
# https://github.com/nix-community/NixOS-WSL

{ config, pkgs, inputs, ... }:

{

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  environment.systemPackages = with pkgs; [
    curl
    git
    htop
    neovim
    wget
    zsh
  ];

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  environment.variables.EDITOR = "nvim";
}
