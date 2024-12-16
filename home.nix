{pkgs, ... }:

{
  home.username = "nikhil";
  home.homeDirectory = "/home/nikhil";

  home.stateVersion = "24.05";

  fonts.fontconfig.enable = true;
  programs.emacs.enable = true;
  home.packages = with pkgs;[
    helix
    mpv
    gh
    nil
    nh
    python3
    python312Packages.python-lsp-server
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

#    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" "FiraCode" ]; })


  ];

  services.redshift = {
    enable = false;
    latitude = 23.25;
    longitude = 77.41;

  };
  home.sessionVariables = {
    # EDITOR = "emacs";
 FLAKE = "/home/nikhil/.nixfiles";
  };
  programs.home-manager.enable = true;
}
