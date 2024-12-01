vim.g.mapleader = " "

local keymap = vim.keymap

-- 改键
--
-- ----------- 插入模式 ---------------
keymap.set("i", "jk", "<ESC>") -- 将 ESC 键 改为 jk

-- ----------- 视觉模式 ---------------
-- 选中单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ----------- 正常模式 ---------------
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- ----------- 插件 -----------------
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- 切换buffer
keymap.set("n", "<S-l>", ":bnext<CR>")
keymap.set("n", "<S-h>", ":bprevious<CR>")
