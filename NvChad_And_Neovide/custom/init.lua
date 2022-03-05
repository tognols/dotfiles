vim.api.nvim_exec([[
    let g:neovide_remember_window_size=v:true
    let g:neovide_refresh_rate=144
    let g:neovide_cursor_vfx_mode="pixiedust"
    let g:neovide_cursor_antialiasing=v:true]], true
) -- Did not wanted to convert this stuff in lua so i just exec it in vimscript lmao

vim.api.nvim_exec([[set guifont=PragmataPro:h16]], true)