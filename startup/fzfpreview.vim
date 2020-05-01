"：FzfPreviewProjectFiles “选择项目文件 
"：FzfPreviewGitFiles ”从git ls文件中选择文件 
"：FzfPreviewDirectoryFiles { path 或none } “从目录文件中选择文件（默认为当前工作目录）（必需[ripgrep]（https://github.com/ BurntSushi / ripgrep）） 
"：FzfPreviewGitStatus “选择列出的git状态文件 
"：FzfPreviewBuffers ”选择文件缓冲区 
"：FzfPreviewAllBuffers “选择所有缓冲区 
"：FzfPreviewProjectOldFiles ”从旧文件中选择项目文件 
"：FzfPreviewProjectMruFiles "使用neomru选择项目mru文件
 
"：FzfPreviewCtags ”从标签文件中选择标签（必需[通用-ctags]（https://github.com/universal-ctags/ctags）和[Python3]（https://www.python.org/）） 
"：FzfPreviewOldFiles “从oldfiles中选择文件 
"：FzfPreviewMruFiles ”从neomru中选择mru文件 
"：FzfPreviewQuickFix “从QuickFix选择行（必需[Python3]（https://www.python.org/）
"：FzfPreviewLocationList ”从LocationList选择行（必需[Python3]（https://www.python.org/）） 
"：FzfPreviewLines “从当前缓冲区中选择行（必需[Python3]（https://www.python.org/）） 
"：FzfPreviewBufferLines ”从加载的缓冲区中选择行（必需[Python3]（https://www.python.org/）） 
"：FzfPreviewJumps “选择跳转列表项（必需[Python3]（https://www.python.org/）） 
"：FzfPreviewChanges ”选择更改列表项（必需[Python3]（https://www.python.org/）） 
"：FzfPreviewMarks ” "选择标记（必需[Python3]（https://www.python.org/））
 
"：FzfPreviewFromResources “从所选资源（项目，git，目录，缓冲区，project_old，project_mru，old，mru）中选择文件 

nnoremap <silent> <Leader>ff	:FZF<CR>
nnoremap <silent> <Leader>fd	:<c-u>FzfPreviewDirectoryFiles<CR>

"nnoremap <silent> <Leader>fp     :<C-u>FzfPreviewFromResources project_mru git<CR>
nnoremap <silent> <Leader>fp     :<C-u>FzfPreviewFromResources git<CR>
nnoremap <silent> <Leader>fgs    :<C-u>FzfPreviewGitStatus<CR>
nnoremap <silent> <Leader>fb     :<C-u>FzfPreviewBuffers<CR>
nnoremap <silent> <Leader>fB     :<C-u>FzfPreviewAllBuffers<CR>
"nnoremap <silent> <Leader>fo     :<C-u>FzfPreviewFromResources buffer project_mru<CR>
nnoremap <silent> <Leader>fo     :<C-u>FzfPreviewFromResources buffer<CR>
nnoremap <silent> <Leader>fj :<C-u>FzfPreviewJumps<CR>
nnoremap <silent> <Leader>fg;    :<C-u>FzfPreviewChanges<CR>
nnoremap <silent> <Leader>f/     :<C-u>FzfPreviewLines -add-fzf-arg=--no-sort -add-fzf-arg=--query="'"<CR>
"提取光标下的单词进行搜索
nnoremap <silent> <Leader>f*     :<C-u>FzfPreviewLines -add-fzf-arg=--no-sort -add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>

"输入关键字，在工程里查找所有有关关键字的文件并预览
"：FzfPreviewProjectGrep {word 或 none } “从args word中提取Grep项目文件（必需[Python3]（https://www.python.org/）） 
nnoremap          <silent> <Leader>fgr    :<C-u>FzfPreviewProjectGrep<Space>
xnoremap          <silent> <Leader>fgr    "sy:FzfPreviewProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
"：FzfPreviewBufferTags “从当前文件中选择标签（必需的[universal-ctags] （https://github.com/universal-ctags/ctags）和[Python3]（https://www.python.org/）） 
nnoremap <silent> <Leader>ft     :<C-u>FzfPreviewBufferTags<CR>
nnoremap <silent> <Leader>fq     :<C-u>FzfPreviewQuickFix<CR>
"貌似是跳转到有错误的文件中的
nnoremap <silent> <Leader>fl     :<C-u>FzfPreviewLocationList<CR>

