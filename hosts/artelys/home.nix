{ config, pkgs, inputs, ... }:

{
  home.stateVersion = "24.05";

  home.packages = with pkgs; [
    direnv
    eza
    fd
    fzf
    jq
    ripgrep
    starship
    tldr
    tmux
    unzip
    zip

    gcc_multi
    gnumake
    go_1_23
    nodejs_22
    python3
    ruby_3_3
  ];

  programs.zsh = {
    enable = true;
  };

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
  };

  programs.git = {
    enable = true;
    userEmail = "verger.guillaume@gmail.com";
    userName = "Guillaume Verger";
  };
}
