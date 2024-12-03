local opt = vim.opt

-- 编码方式: utf8
opt.encoding = "UTF-8"
opt.fileencoding = 'utf-8'

-- jkhl 移动光标时周围保留8行
opt.scrolloff = 8
opt.sidescrolloff = 8

-- 高亮所在的行
opt.cursorline = true

-- 相对行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true

-- 新行对齐当前行
opt.autoindent = true
opt.smartindent = true

-- 行超出屏幕不进行换行显示
opt.wrap = false

-- 显示左侧图标指示列
opt.signcolumn = "yes"

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索大小写不敏感,除非包括大写
opt.ignorecase = true
opt.smartcase = true

-- 边输入边搜素
opt.incsearch = true

-- 命令行高为2
-- opt.cmdheight = 2

-- 当文件被外部修改时,自动加载
opt.autoread = true

-- 禁止创建备份文件
opt.backup = false
opt.writebackup = false
opt.swapfile = false

-- 自动补全不自动选中
opt.completeopt = "menu,menuone,noselect,noinsert"

-- 不可见字符的显示,这里只是把空格显示成一个点
-- opt.list = true
-- opt.listchars = "space:."

-- 永远显示tabline
opt.showtabline = 2
-- 使用增强状态栏后不再需要 vim 的模式提示
opt.showmode = false

-- 外观
-- 使用终端真颜色
opt.termguicolors = true
--  左侧多一列
opt.signcolumn = "yes"
-- 主题
vim.cmd[[colorscheme catppuccin-mocha]]



