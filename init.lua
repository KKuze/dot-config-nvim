require("config.lazy")

local plugins = {
  require("plugins")
}
-- require('super-commit').setup()

-- expandtab オプションを設定します。タブ文字をスペースに変換します。
vim.cmd("set expandtab")

-- tabstop オプションを設定します。タブ文字の幅を4スペースに設定します。
vim.cmd("set tabstop=2")

-- softtabstop オプションを設定します。インサートモードでのタブの幅を4スペースに設定します。
vim.cmd("set softtabstop=2")

-- shiftwidth オプションを設定します。インデントに使用するスペースの幅を4スペースに設定します。
vim.cmd("set shiftwidth=2")
