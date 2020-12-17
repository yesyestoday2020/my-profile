" node plugins
call remote#host#RegisterPlugin('node', '/Users/apple/.local/share/nvim/plugged/fzf-preview.vim/rplugin/node/fzf-preview.vim', [
      \ {'sync': v:true, 'name': 'FzfPreviewProjectFiles', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewGitFiles', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewDirectoryFiles', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewBuffers', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewAllBuffers', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewProjectOldFiles', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewProjectMruFiles', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewProjectMrwFiles', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewLines', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewBufferLines', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewCtags', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewBufferTags', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewOldFiles', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewMruFiles', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewMrwFiles', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewQuickFix', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewLocationList', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewJumps', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewChanges', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewMarks', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewProjectGrep', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewFromResources', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewCommandPalette', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewGitActions', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewGitStatus', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewGitStatusActions', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewGitBranches', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewGitBranchActions', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewGitLogs', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewGitCurrentLogs', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewGitLogActions', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewGitStashes', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewGitStashActions', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewGitReflogs', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewGitReflogActions', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewBookmarks', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewYankround', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewVistaCtags', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewVistaBufferCtags', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'FzfPreviewBlamePR', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:false, 'name': 'FzfPreviewRemoteEnvironment', 'type': 'command', 'opts': {'nargs': '*'}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenFileEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenFileCtrlX', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenFileCtrlV', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenFileCtrlT', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenFileCtrlO', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenFileCtrlQ', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenBufferEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenBufferCtrlX', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenBufferCtrlV', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenBufferCtrlT', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenBufferCtrlO', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenBufferCtrlQ', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenBufnrEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenBufnrCtrlX', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenBufnrCtrlV', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenBufnrCtrlT', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenBufnrCtrlQ', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewCommandPaletteEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewCommandPaletteCtrlE', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitActionEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStatusEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStatusCtrlX', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStatusCtrlV', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStatusCtrlT', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStatusCtrlO', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStatusCtrlA', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStatusCtrlR', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStatusCtrlC', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStatus-<', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStatus->', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStatusActionsEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStatusActions-<', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitBranchEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitBranchCtrlS', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitBranch-<', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitBranch->', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitBranchActionsEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitBranchActions-<', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitLogEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitLogCtrlS', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitLog-<', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitLog->', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitLogActionsEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitLogActions-<', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStashEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStashCtrlS', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStash-<', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStash->', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStashActionsEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitStashActions-<', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitReflogEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitReflogCtrlS', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitReflog-<', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitReflog->', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitReflogActionsEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewGitReflogActions-<', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewRegisterEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewOpenPrEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'FzfPreviewHandleResource', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'FzfPreviewGetDefaultProcesses', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'FzfPreviewDispatchResumeQuery', 'type': 'function', 'opts': {}},
     \ ])


" python3 plugins


" ruby plugins


" python plugins


