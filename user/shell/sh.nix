{...}:
let 
  myAliases = {
    msh="nix develop --command fish";
    ls="exa -laH --color=auto --group-directories-first --icons --git";
    btw="clear;fastfetch";
    md="mkdir -p";
    nb="newsboat";
    fm="yazi";
    vim="nvim";
    cat="bat";
    camtest="mpv av://v4l2:/dev/video0 --profile=low-latency --untimed";
    gcd="git clone --depth 1";
    gl="git log --oneline --decorate --color --graph --all";
    gs="git status";
    gsw="git switch";
    gb="git branch";
    gd="git diff";
    ga="git add";
    gc="git commit";
  };
in
  {
  imports = [./shellprompt.nix];

  programs.fish = {
    enable = true;
    #shellAbbrs = myAliases;
    shellAliases = myAliases;
    loginShellInit= ''
set -x EDITOR nvim
fish_add_path ~/.local/bin/
fish_add_path ~/.cargo/bin/
fish_add_path /usr/local/go/bin
fish_add_path /usr/local/flutter/bin
fish_add_path ~/go/bin
fish_add_path ~/.surrealdb/

    '';
    interactiveShellInit = ''
set fish_greeting
set -Ux FZF_DEFAULT_OPTS "
  --color=fg:#908caa,bg:#191724,hl:#ebbcba
  --color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba
  --color=border:#403d52,header:#31748f,gutter:#191724
  --color=spinner:#f6c177,info:#9ccfd8
  --color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"
    '';


  };
  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = myAliases;
  };

  programs.direnv = {
    enableBashIntegration = true;
    enableFishIntegration = true;
    nix-direnv.enable = true;
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
  };
}
