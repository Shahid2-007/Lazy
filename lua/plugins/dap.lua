return {
  "mfussenegger/nvim-dap",
  enabled = false,
  -- recommended = true,
  -- desc = "Debugging support. Requires language specific adapters to be configured. (see lang extras)",
  dependencies = {
    "rcarriga/nvim-dap-ui", -- For DAP UI integration
    {
      "theHamsta/nvim-dap-virtual-text", -- For virtual text support
      opts = {},
    },
    "nvim-telescope/telescope.nvim", -- Ensure Telescope is installed
  },

  config = function()
    -- Initialize dap
    local dap = require("dap")
    local telescope = require("telescope")
    local pickers = require("telescope.pickers")
    local finders = require("telescope.finders")
    local actions = require("telescope.actions")
    local action_state = require("telescope.actions.state")

    -- Configure gdb adapter
    dap.adapters.codelldb = {
      type = "executable",
      command = "codelldb", -- Path to the debugger executable
      name = "codelldb",
    }

    -- Function to pick an executable file with Telescope
    local function pick_executable(callback)
      -- local cwd = vim.fn.getcwd()
      -- local build_dir = cwd .. "/build"
      local build_dir = "/home/eren/bin/"

      -- Find executables in the directory
      local handle = io.popen("find " .. build_dir .. " -type f -executable")
      if not handle then
        return nil
      end
      local result = handle:read("*a")
      handle:close()

      -- Split results into a table of files
      local files = vim.split(result, "\n")
      if #files == 0 then
        return vim.fn.input("No executable found. Please provide a path: ", build_dir, "file")
      end

      -- Use Telescope to allow the user to pick an executable
      pickers
        .new({}, {
          prompt_title = "Select Executable",
          finder = finders.new_table({
            results = files,
          }),
          attach_mappings = function(_, map)
            map("i", "<CR>", function(bufnr)
              local selected = action_state.get_selected_entry(bufnr)[1]
              actions.close(bufnr)
              -- Callback to pass selected executable back
              callback(selected)
            end)
            return true
          end,
        })
        :find()
    end

    -- Configuration for C++ (can be copied to C as well)
    dap.configurations.c = {
      {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
          -- Call the picker and wait for selection
          pick_executable(function(selected)
            if selected then
              print("Selected executable: " .. selected)
              dap.run({
                name = "Launch file",
                type = "codelldb",
                request = "launch",
                program = selected, -- Use selected executable
                cwd = "/home/eren/bin/",
                stopOnEntry = false,
                args = {}, -- Pass arguments if needed
              })
            else
              print("No executable selected!")
            end
          end)
        end,
        cwd = "/home/eren/bin/",
        stopOnEntry = false,
        args = {}, -- Pass arguments if needed
      },
    }

    -- Optionally, use C++ settings for C (they are the same)
    dap.configurations.cpp = dap.configurations.c
  end,
}
