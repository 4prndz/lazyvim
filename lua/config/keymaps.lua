local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local opts = { noremap = true, silent = true }

map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

map("n", "<C-a>", "ggVG")

-- Oil.nvim
map("n", "<leader>-", "<cmd>Oil<cr>", { desc = "Open oil.nvim" })

-- Tab
map("n", "<Tab>", ":bnext<CR>", opts)
map("n", "<S-Tab>", ":bprevious<CR>", opts)
map("n", "tw", ":bdelete<CR>", opts)
map("n", "tn", "<cmd>tabnew<cr>")

-- File
map("n", "<leader>q", "<cmd>q<cr>", opts)
map("n", "<leader>w", "<cmd>w<cr>", opts)
map("n", "<leader>x", "<cmd>x<cr>", opts)

-- Split
map("n", "ss", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)

-- Move
map("n", "sh", "<C-w>h")
map("n", "sk", "<C-w>k")
map("n", "sj", "<C-w>j")
map("n", "sl", "<C-w>l")

-- Resize
map("n", "<C-S-h>", "<C-w><")
map("n", "<C-S-l>", "<C-w>>")
map("n", "<C-S-k>", "<C-w>+")
map("n", "<C-S-j>", "<C-w>-")

-- Telescope
map("n", "<C-p>", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fw", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>fa", "<cmd>Telescope live_grep_args<cr>")

-- Search and Replace
map("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and Replace RegExp" })

-- Cursor
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Find
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
