local function v_notify(cmd)
    return string.format("<cmd>call VSCodeNotifyVisual('%s', 1)<CR>", cmd)
end
local function moveCursor(direction)
    if (vim.fn.reg_recording() == '' and vim.fn.reg_executing() == '') then
        return ('g' .. direction)
    else
        return direction
    end
end

vim.keymap.set('n', 'k', function()
    return moveCursor('k')
end, { expr = true, remap = true })
vim.keymap.set('n', 'j', function()
    return moveCursor('j')
end, { expr = true, remap = true }) -- keymap('n', 'j', , { noremap = true, silent = true })
-- keymap('n', 'k', , { noremap = true, silent = true })
vim.cmd('nmap <leader>s :w<cr>')

vim.cmd('nmap <leader>v :vsplit<cr>')
keymap('n', '<S-l>', nextEditor, { noremap = true, silent = true })
keymap('n', 'zR', unfoldAll, { noremap = true, silent = true })
keymap('n', 'zc', fold, { noremap = true, silent = true })
keymap('n', 'zC', foldRecursively, { noremap = true, silent = true })
keymap('n', 'zo', unfold, { noremap = true, silent = true })
keymap('n', 'za', toggleFold, { noremap = true, silent = true })

keymap('n', '<S-h>', previousEditor, { noremap = true, silent = true })
keymap('n', '<leader>bb', showAllEditors, { noremap = true, silent = true })
keymap('n', '<leader>bd', closeActiveEditor, { noremap = true, silent = true })
keymap('n', '<leader>bm', closeOtherEditors, { noremap = true, silent = true })
keymap('n', '<leader>bu', reopenClosedEditor, { noremap = true, silent = true })
keymap('n', '<leader>bh', moveEditorToLeftGroup, { noremap = true, silent = true })
keymap('n', '<leader>bj', moveEditorToBelowGroup, { noremap = true, silent = true })
keymap('n', '<leader>bk', moveEditorToAboveGroup, { noremap = true, silent = true })
keymap('n', '<leader>bl', moveEditorToRightGroup, { noremap = true, silent = true })
keymap('n', '<Leader>xd', viewProblems, { noremap = true, silent = true }) -- language diagnostics
keymap('n', '<leader>gr', goToReferences, { noremap = true, silent = true })
keymap('n', '<Leader>rn', rename, { noremap = true, silent = true })
keymap('n', '<Leader>fm', formatDocument, { noremap = true, silent = true })
keymap('n', '<leader>cs', clearSearch, { noremap = true, silent = true })
keymap('n', '[d', nextProblem, { noremap = true, silent = true })      -- next problem
keymap('n', ']d', prevProblem, { noremap = true, silent = true })      -- next problem
keymap('n', '<Leader>fm', formatDocument, { noremap = true, silent = true })
keymap('n', '<Leader>ca', refactor, { noremap = true, silent = true }) -- language code actions

keymap('n', '[d', nextProblem, { noremap = true, silent = true })      -- next problem
keymap('n', ']d', prevProblem, { noremap = true, silent = true })      -- next problem
keymap('v', '<Leader>fm', v_notify 'editor.action.formatSelection', { noremap = true, silent = true })
keymap('v', '<Leader>ca', v_notify 'editor.action.refactor', { noremap = true, silent = true })
keymap('n', '<leader>gh', showHover, { noremap = true, silent = true })
keymap('n', '<leader>gd', revealDefinition, { noremap = true, silent = true })
keymap('n', '<leader>gf', revealDeclaration, { noremap = true, silent = true })
keymap('n', '<leader>gr', referenceSearch, { noremap = true, silent = true })
keymap('v', '<leader>gr', v_notify 'editor.action.referenceSearch.trigger', { noremap = true, silent = true })
keymap('n', '<leader>gs', gotoSymbol, { noremap = true, silent = true })
-- keymap('n', '<C-w>gd', revealDefinitionAside, { noremap = true, silent = true })
-- keymap('n', '<C-w>gf', revealDeclarationAside, { noremap = true, silent = true })
keymap('n', '<leader>gD', peekDefinition, { noremap = true, silent = true })
keymap('n', '<leader>gF', peekDeclaration, { noremap = true, silent = true })
keymap('n', '<leader>gI', peekImplementation, { noremap = true, silent = true })

keymap('n', '<leader>ya', copyAll, { noremap = true, silent = true })

keymap('n', '<C-n>', navigateListNext, { noremap = true, silent = true })
keymap('n', '<C-p>', navigateListPrev, { noremap = true, silent = true })
keymap('n', '<leader>is', insertSnippet, { noremap = true, silent = true })
keymap('n', '<leader>mc', clearBookmarks, { noremap = true, silent = true })
keymap('n', '<leader>mk', jumpToPreviousBookmark, { noremap = true, silent = true })
keymap('n', '<leader>mj', jumpToNextBookmark, { noremap = true, silent = true })
keymap('n', '<leader>ml', listBookmarksFromAllFiles, { noremap = true, silent = true })
keymap('n', '<leader>mi', toggleBookmark, { noremap = true, silent = true })
-- navigate betweens windows
keymap('n', '<leader>j', navigateDown, { silent = true })
keymap('n', '<leader>k', navigateUp, { silent = true })
keymap('n', '<leader>h', navigateLeft, { silent = true })
keymap('n', '<leader>l', navigateRight, { silent = true })
