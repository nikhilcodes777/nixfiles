{ pkgs, ... }:

{
  home.username = "nikhil";
  home.homeDirectory = "/home/nikhil";

  home.stateVersion = "24.05";

  fonts.fontconfig.enable = true;
  programs.emacs.enable = true;
  home.packages = with pkgs; [
    helix
    mpv
    gh
    lazygit
    direnv
    nodejs
    bun
    nil
    nixfmt-rfc-style
    nh
    yt-dlp
    fastfetch
    ranger
    gcc
    clang-tools
    unzip
    tmux
    kitty
    fzf
    bat
    ripgrep
    fd
    eza
    colloid-icon-theme
    wl-clipboard
    nerd-fonts.jetbrains-mono
    poppins
    nerd-fonts.fira-code
    afterglow-cursors-recolored

  ];
  programs.home-manager.enable = true;
}
