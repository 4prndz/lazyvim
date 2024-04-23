local opt = vim.opt

opt.number = true
opt.title = true
opt.autoindent = true
opt.smartindent = true
opt.hlsearch = true
opt.backup = false
opt.showcmd = true
opt.cmdheight = 0
opt.laststatus = 0
opt.expandtab = true
opt.scrolloff = 5
opt.sidescrolloff = 5
opt.inccommand = "split"
opt.ignorecase = true
opt.smartcase = true
opt.smarttab = true
opt.breakindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.wrap = false
opt.backspace = { "start", "eol", "indent" }
opt.path:append({ "**" })
opt.wildignore:append({ "*/node_modules/*" })
opt.splitbelow = true
opt.splitright = true
opt.splitkeep = "cursor"
opt.mouse = ""

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })
