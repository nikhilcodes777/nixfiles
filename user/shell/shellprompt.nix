{...} :{

  programs.oh-my-posh = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
  };
  home.file.".config/oh-my-posh/config.json".source =./prompt.json;
}
