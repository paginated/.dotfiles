{
  # Configure Lualine
  programs.nixvim.plugins.lualine = {
    enable = true;
    settings = {
      options = {
        component_separators = {
          left = "";
          right = "";
        };
        section_separators = {
          left = "";
          right = "";
        };
      };
      tabline = {
        lualine_a = [
          {
            __unkeyed-1 = "buffers";
            symbols = {
              alternate_file = "";
            };
          }
        ];
      };
      sections = {
        lualine_a = [
          "mode"
        ];
        lualine_b = [
          {
            __unkeyed-1 = "branch";
            icon = "";
          }
        ];
        lualine_c = [
          "diagnostics"
        ];
        lualine_x = [
          {
            __unkeyed-1 = {
              __raw = ''
                function()
                    local msg = ""
                    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                    local clients = vim.lsp.get_active_clients()
                    if next(clients) == nil then
                        return msg
                    end
                    for _, client in ipairs(clients) do
                        local filetypes = client.config.filetypes
                        if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                            return client.name
                        end
                    end
                    return msg
                end
              '';
            };
            icon = "";
          }
          "filetype"
        ];
        lualine_z = [
          "location"
        ];
      };
    };
  };
}
