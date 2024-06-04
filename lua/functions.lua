function findReferences()
  vscode.call('references-view.findReferences')
end

function viewProblems()
  vscode.call('workbench.actions.view.problems')
end

function goToReferences()
  vscode.call('editor.action.goToReferences')
end

function cutReferences()
  vscode.call('editor.action.goToReferences')
end

function rename()
  vscode.call('editor.action.rename')
end

function formatDocument()
  vscode.call('editor.action.formatDocument')
end

function refactor()
  vscode.call('editor.action.refactor')
end

function nextProblem()
  vscode.call('editor.action.marker.nextInFiles')
end

function prevProblem()
  vscode.call('editor.action.marker.prevInFiles')
end

function findInFiles()
  vscode.call('workbench.action.findInFiles')
end

function showCommands()
  vscode.call('workbench.action.showCommands')
end

function quickOpen()
  vscode.call('workbench.action.quickOpen')
end

function showHover()
  vscode.call('editor.action.showHover')
  vscode.call('notifications.focusToasts')
end

function revealDefinition()
  vscode.call('editor.action.revealDefinition')
end

function revealDeclaration()
  vscode.call('editor.action.revealDeclaration')
end

function clearSearch()
  vscode.call('search.action.clearSearchResults')
end

function referenceSearch()
  vscode.call('editor.action.referenceSearch.trigger')
end

function gotoSymbol()
  vscode.call('workbench.action.gotoSymbol')
end

function revealDefinitionAside()
  vscode.call('editor.action.revealDefinitionAside')
end

function revealDeclarationAside()
  vscode.call('editor.action.revealDeclarationAside')
end

function peekDefinition()
  vscode.call('editor.action.peekDefinition')
end

function peekDeclaration()
  vscode.call('editor.action.peekDeclaration')
end

function peekImplementation()
  vscode.call('editor.action.peekImplementation')
end

function showAllEditors()
  vscode.call('workbench.action.showAllEditors')
end

function closeActiveEditor()
  vscode.call('workbench.action.closeActiveEditor')
end

function moveEditorToLeftGroup()
  vscode.call('workbench.action.moveEditorToLeftGroup')
end

function moveEditorToBelowGroup()
  vscode.call('workbench.action.moveEditorToBelowGroup')
end

function moveEditorToAboveGroup()
  vscode.call('workbench.action.moveEditorToAboveGroup')
end

function moveEditorToRightGroup()
  vscode.call('workbench.action.moveEditorToRightGroup')
end

function closeOtherEditors()
  vscode.call('workbench.action.closeOtherEditors')
end

function nextEditor()
  vscode.call('workbench.action.nextEditor')
end

function previousEditor()
  vscode.call('workbench.action.previousEditor')
end

function reopenClosedEditor()
  vscode.call('workbench.action.reopenClosedEditor')
end

function copyAll()
  vscode.action('editor.action.selectAll')
  vscode.action('editor.action.clipboardCopyAction')
  vscode.action('cancelSelection')
end

function navigateListNext()
  vscode.call('navigateListNext')
end

function navigateListPrev()
  vscode.call('navigateListPrev')
end

function insertSnippet()
  vscode.call('workbench.action.openSnippets')
  -- vscode.call('editor.action.insertSnippet')
end

function clearBookmarks()
  vscode.call('bookmarks.clear')
end

function jumpToPreviousBookmark()
  vscode.call('bookmarks.jumpToPrevious')
end

function jumpToNextBookmark()
  vscode.call('bookmarks.jumpToNext')
end

function listBookmarksFromAllFiles()
  vscode.call('bookmarks.listFromAllFiles')
end

function toggleBookmark()
  vscode.call('bookmarks.toggle')
end

function navigateDown()
  vscode.call('workbench.action.focusBelowGroup')
end

function navigateUp()
  vscode.call('workbench.action.focusAboveGroup')
end

function navigateLeft()
  vscode.call('workbench.action.focusLeftGroup')
end

function navigateRight()
  vscode.call('workbench.action.focusRightGroup')
end

function moveLinesDownAction()
  vscode.call('editor.action.moveLinesDownAction')
end

function moveLinesUpAction()
  vscode.call('editor.action.moveLinesUpAction')
end

function foldAll()
  vscode.call('editor.foldAll')
end

function unfoldAll()
  vscode.call('editor.unfoldAll')
end

function fold()
  vscode.call('editor.fold')
end

function foldRecursively()
  vscode.call('editor.foldRecursively')
end

function unfold()
  vscode.call('editor.unfold')
end

function unfoldRecursively()
  vscode.call('editor.unfoldRecursively')
end

function toggleFold()
  vscode.call('editor.toggleFold')
end
