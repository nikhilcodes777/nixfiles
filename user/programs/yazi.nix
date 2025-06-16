{ ... }:
{
  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableZshIntegration = true;
    settings = {
      log = {
        enabled = false;
      };
      mgr = {
        show_hidden = false;
        ratio = [
          1
          3
          4
        ];
        sort_by = "natural";
        sort_dir_first = true;
        linemode = "size";
      };
    };

    keymap = {
      input.prepend_keymap = [
        {
          run = "close";
          on = [ "x" ];
        }
        {
          run = "escape";
          on = [ "<Esc>" ];
        }
      ];
      mgr.prepend_keymap = [
        {
          run = "escape";
          on = [ "<Esc>" ];
        }
        {
          run = "close";
          on = [ "x" ];
        }
        {
          run = "cd ~/.nixfiles";
          on = [
            "g"
            "n"
          ];
          desc = "Go to Nix";
        }
        {
          run = "hidden toggle";
          on = [ "H" ];
          desc = "Toggle Hidden";
        }
      ];
    };

  };

}
