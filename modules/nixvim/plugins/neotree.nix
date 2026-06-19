{ ... }:
{
  programs.nixvim.plugins.neo-tree = {
    enable = true;

    settings = {
      close_if_last_window = true;

      window = {
        position = "left";
        width = 37;
      };

      source_selector = {
        winbar = true;

        show_separator_on_edge = false;
        separator = {
          left  = "▏"; 
          right = "▕";
        };

        sources=[
          {
            source = "filesystem";
            display_name = " 󰉓 Files ";
          }
          {
            source = "buffers";
            display_name = " 󰈚 Buffers ";
          }
          {
            source = "git_status";
            display_name = " 󰊢 Git ";
          }
        ];
      };

      default_component_configs = {
        git_status.symbols = {
          added     = "✚";
          deleted   = "✖";
          modified  = "";
          renamed   = "󰁕";
          
          untracked = "";
          ignored   = "";
          unstaged  = "";
          staged    = "";
          conflict  = "";
        };

        symlink_target.enabled  = false;
        last_modified.enabled   = false;
        file_size.enabled       = false;
        created.enabled         = false;
        type.enabled            = false;
      };

      filesystem = {
        follow_current_file = {
          enabled = true;
          leave_dirs_open = true;
        };
      };

      buffers = {
        follow_current_file = {
          enabled = true;
          leave_dirs_open = true;
        };
      };
    };
  };
}
