return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup {
      install_dir = vim.fn.stdpath('data') .. '/site'
    }

    require('nvim-treesitter').install {
      'rust',
      'cmake',
      'javascript',
      'lua',
      'c_sharp',
      'cpp',
      'c',
      'html',
      'css',
      'csv',
      'json',
      'python',
      'typescript',
      'udev',
      'vue',
      'zsh',
      'razor',
      'markdown',
      'gdshader',
      'godot_resource',
      'bash'
    }
  end
}
