{ pkgs, ... }:

{
  home.username = "nikhil";
  home.homeDirectory = "/home/nikhil";

  home.stateVersion = "24.05";

  fonts.fontconfig.enable = true;
  programs.emacs.enable = true;
  imports = [
    ./user/programs/yazi.nix
    ./user/shell/sh.nix
  ];
  home.packages = with pkgs; [
    helix
    delta
    hyperfine
    onefetch
    gitui
    wiki-tui
    mpv
    gh
    jq
    vscode
    httpie-desktop
    htop
    aria2
    lazygit
    direnv
    nodejs
    bun
    tailwindcss-language-server
    typescript-language-server
    vscode-langservers-extracted
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
