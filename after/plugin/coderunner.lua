require('code_runner').setup({
    startinsert = true,
    filetype = {
        javascript = "node",
        java = {
            "cd $dir &&",
            "javac $fileName &&",
            "java $fileNameWithoutExt",
        },
        c = {
            "cd $dir &&",
            "gcc $fileName",
            "-o $fileNameWithoutExt &&",
            "$dir/$fileNameWithoutExt",
        },
        cpp = {
            "cd $dir &&",
            "g++ $fileName",
            "-o $fileNameWithoutExt &&",
            "$dir/$fileNameWithoutExt",
        },
        python = "python3 -u",
        sh = "bash",
        rust = {
            "cd $dir &&",
            "rustc $fileName &&",
            "$dir/$fileNameWithoutExt",
        },
    },
    project_path = "",
    project = {},
    prefix = "",
})

vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })

