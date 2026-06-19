{ ... }:
{
  programs.nixvim.plugins ={
    bufferline = {
      enable = true;
      
      settings = {
        options = {
          mode = "buffers";
          themable = true;
          numbers = "ordinal";

          auto_toggle_bufferline = true;
          always_show_bufferline = false;
          
          show_close_icon = false;

          indicator = {
            icon = "|";
            style = "icon";
          };

          offsets = [
            {
              filetype = "neo-tree";
              highlight = "Directory";
              text = "File Explorer";
              text_align = "center";
            }
          ];

          left_trunc_marker = "<";
          right_trunc_marker = ">";
        };
      };
    };

    bufdelete = {
      enable = true;
    };
  };
}
