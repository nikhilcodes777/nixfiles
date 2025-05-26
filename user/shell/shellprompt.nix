{ ... }:
{

  programs.oh-my-posh = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    settings = builtins.fromJSON (
      builtins.unsafeDiscardStringContext (builtins.readFile ./prompt.json)
    );
  };

  #home.file.".config/oh-my-posh/config.json".source = ./prompt.json;
}
