-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.api.nvim_set_keymap

-- noremap=true 表示不会重新映射; silent=true表示不会输出多余的信息
local opt = {noremap = true, silent = true}

-- ----------- 插入模式 ---------------
-- 将 ESC 键 改为 jk
keymap("i", "jk", "<ESC>", opt)

-- 跳到行首行尾
keymap("i", "<D-h>", "<ESC>I", opt)
keymap("i", "<D-l>", "<ESC>A", opt)

-- ----------- 视觉模式 ---------------
-- 选中单行或多行移动
keymap("v", "J", ":m '>+1<CR>gv=gv", opt)
keymap("v", "K", ":m '<-2<CR>gv=gv", opt)

-- 代码缩进
keymap("v", "<", "<gv", opt)
keymap("v", ">", ">gv", opt)

-- ----------- 正常模式 ---------------
-- 取消 s 默认行为
keymap("n", "s", "", opt)

-- 窗口
-- 水平新增窗口
keymap("n", "sv", "<C-w>v", opt)
-- 垂直新增窗口
keymap("n", "sh", "<C-w>s", opt)
-- 关闭当前窗口
keymap("n", "sc", "<C-w>c", opt)
-- 关闭其他窗口
keymap("n", "so", "<C-w>o", opt)
-- Alt + hjkl 窗口之间跳转
keymap("n", "<A-h>", "<C-w>h", opt)
keymap("n", "<A-j>", "<C-w>j", opt)
keymap("n", "<A-k>", "<C-w>k", opt)
keymap("n", "<A-l>", "<C-w>l", opt)
-- 调整窗口比例
-- 左右比例
keymap("n", "vl", ":vertical resize -4<CR>", opt)
keymap("n", "vh", ":vertical resize +4<CR>", opt)
-- 上下比例
keymap("n", "vk", ":resize +4<CR>", opt)
keymap("n", "vj", ":resize -4<CR>", opt)
-- 等比例
keymap("n", "w=", "<C-w>=", opt)

-- 取消高亮
keymap("n", "<leader>nh", ":nohl<CR>", opt)

-- Terminal 相关
keymap("n", "<leader>t", ":sp | terminal<CR>", opt)
keymap("n", "<leader>vt", ":vsp | terminal<CR>", opt)
keymap("n", "<Esc>", "<C-\\><C-n>", opt) -- 不生效？

-- 上下滚动浏览
keymap("n", "<D-j>", "4j", opt)
keymap("n", "<D-k>", "4k", opt)
keymap("n", "<D-u>", "9k", opt)
keymap("n", "<D-d>", "9j", opt)

-- 跳转到行首行尾
keymap("n", "<D-h>", "0", opt)
keymap("n", "<D-l>", "$", opt)

-- 保存
keymap("n", "<D-s>", ":w<CR>", opt)

-- 退出
keymap("n", "q", ":q<CR>", opt)
keymap("n", "<leader>qq", ":q!<CR>", opt)
keymap("n", "<leader>Q", ":qa!<CR>", opt)

-- ----------- 插件 -----------------
-- nvim-tree
keymap("n", "<D-e>", ":NvimTreeToggle<CR>", opt)

-- 切换buffer
keymap("n", "<S-l>", ":bnext<CR>", opt)
keymap("n", "<S-h>", ":bprevious<CR>", opt)

-- rustacean
local bufnr = vim.api.nvim_get_current_buf()

vim.keymap.set("n", "<leader>a", function ()
  vim.cmd.RustLsp('codeAction')
end, {silent = true, buffer = bufnr})

-- fine-cmdline
keymap('n', ':', '<cmd>FineCmdline<Cr>', opt)


