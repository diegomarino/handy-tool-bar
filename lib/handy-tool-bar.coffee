module.exports =
  deactivate: ->
    @toolBar?.removeItems()

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'handy-tool-bar'

    @toolBar.addSpacer()

    # @toolBar.addButton
    #   icon: 'file-empty'
    #   callback: 'application:new-file'
    #   tooltip: 'New File'
    #   iconset: 'icomoon'


    @toolBar.addButton
      icon: 'file-text'
      callback: 'application:open-file'
      tooltip: 'Open File'
      iconset: 'icomoon'

    @toolBar.addButton
      'icon': 'folder-open'
      'callback': 'application:open-folder'
      'tooltip': 'Open Folder'
      'iconset': 'icomoon'

    # @toolBar.addButton
    #   'icon': 'floppy-disk'
    #   'callback': 'core:save'
    #   'tooltip': 'Save File'
    #   'iconset': 'icomoon'

    if atom.packages.loadedPackages['project-manager']
      @toolBar.addButton
        'icon': 'file-submodule'
        'tooltip': 'List projects'
        'callback': 'project-manager:list-projects'

    # @toolBar.addSpacer()
    #
    # @toolBar.addButton
    #   'icon': 'search'
    #   'iconset': 'fa'
    #   'tooltip': 'Find in Buffer'
    #   'callback': 'find-and-replace:toggle'

    @toolBar.addSpacer()

    @toolBar.addButton
      'icon': 'columns'
      'callback': 'pane:split-right'
      'tooltip': 'Split Right'
      'iconset': 'fa'

    btn = @toolBar.addButton
      'icon': 'columns'
      'callback': 'pane:split-down'
      'tooltip': 'Split Down'
      'iconset': 'fa'
    btn.element.classList.add 'fa-rotate-270'

    @toolBar.addSpacer()

    @toolBar.addButton
      'iconset': 'fa'
      'icon': 'arrows-alt'
      'tooltip': 'Toggle Fullscreen'
      'callback': 'window:toggle-full-screen'

    @toolBar.addButton
      'icon': 'list'
      'callback': 'tree-view:toggle'
      'tooltip': 'Toggle Sidebar'
      'iconset': 'fa'

    if atom.packages.loadedPackages['minimap']
      @toolBar.addButton
        'icon': 'eye'
        'tooltip': 'Toggle Minimap'
        'callback': 'minimap:toggle'

    if atom.packages.loadedPackages['expose']
      @toolBar.addButton
        'icon': 'browser'
        'tooltip': 'Toggle Exposé'
        'callback': 'expose:toggle'

    @toolBar.addSpacer()

    @toolBar.addButton
      'icon': 'indent'
      'callback': 'editor:auto-indent'
      'tooltip': 'Auto indent (selection)'
      'iconset': 'fa'

    # @toolBar.addButton
    #   'icon': 'level-up-alt'
    #   'callback': 'editor:fold-all'
    #   'tooltip': 'Fold all'
    #   'iconset': 'fa'

    @toolBar.addButton
      'icon': 'level-down-alt'
      'callback': 'editor:unfold-all'
      'tooltip': 'Unfold all'
      'iconset': 'fa'


    if atom.packages.loadedPackages['atom-beautify']
      @toolBar.addButton
        'icon': 'star'
        'callback': 'atom-beautify:beautify-editor'
        'tooltip': 'Beautify'
        'iconset': 'fa'

    if atom.packages.loadedPackages['terminal-plus']
      @toolBar.addSpacer()
      @toolBar.addButton
        'icon': 'terminal'
        'callback': 'terminal-plus:toggle'
        'tooltip': 'Toggle Terminal-plus'
    # else if atom.packages.loadedPackages['term2']
    #   @toolBar.addSpacer()
    #   @toolBar.addButton
    #     'icon': 'terminal'
    #     'callback': 'term2:open-split-down'
    #     'tooltip': 'Term2 Split Down'
    # else if atom.packages.loadedPackages['term3']
    #   @toolBar.addSpacer()
    #   @toolBar.addButton
    #     'icon': 'terminal'
    #     'callback': 'term3:open-split-down'
    #     'tooltip': 'Term3 Split Down'
    # else if atom.packages.loadedPackages['platformio-ide-terminal']
    #   @toolBar.addSpacer()
    #   @toolBar.addButton
    #     'icon': 'terminal'
    #     'callback': 'platformio-ide-terminal:toggle'
    #     'tooltip': 'Toggle platformio-ide-terminal'

    # if atom.inDevMode()
  #
    #   @toolBar.addSpacer()
  #
    #   @toolBar.addButton
    #     'icon': 'refresh'
    #     'callback': 'window:reload'
    #     'tooltip': 'Reload Window'
    #     'iconset': 'ion'
  #
    #   @toolBar.addButton
    #     'icon': 'bug'
    #     'callback': 'window:toggle-dev-tools'
    #     'tooltip': 'Toggle Developer Tools'

    if atom.packages.loadedPackages['git-plus']
      @toolBar.addSpacer()
      @toolBar.addButton
        'icon' : 'git-plain'
        'callback' : 'git-plus:menu'
        'tooltip' : 'Git plus'
        'iconset' : 'devicon'

    if atom.packages.loadedPackages['script']
      @toolBar.addSpacer()
      @toolBar.addButton
        'icon': 'play'
        'callback': 'script:run'
        'tooltip': 'Run script'
        'iconset': 'fa'
      @toolBar.addButton
        'icon': 'stop'
        'callback': 'script:kill-process'
        'tooltip': 'Stop script'
        'iconset': 'fa'
      @toolBar.addButton
        'icon': 'cogs'
        'callback': 'script:run-options'
        'tooltip': 'Configure script'
        'iconset': 'fa'

    @toolBar.addSpacer()

    if atom.packages.loadedPackages['markdown-preview-plus']
      @toolBar.addButton
        'icon': 'markdown'
        'callback': 'markdown-preview-plus:toggle'
        'tooltip': 'Markdown Preview'
    else
      @toolBar.addButton
        'icon': 'markdown'
        'callback': 'markdown-preview:toggle'
        'tooltip': 'Markdown Preview'

    if atom.packages.loadedPackages['atom-html-preview']
      @toolBar.addButton
        'icon': 'logo-html5'
        'callback': 'atom-html-preview:toggle'
        'tooltip': 'HTML Preview'
        'iconset': 'ion'


    if atom.packages.loadedPackages['atom-live-server']
      @toolBar.addButton
        'icon': 'sync'
        'callback': 'atom-live-server:start-3000'
        'tooltip': 'HTML Live Server'
        'iconset': 'fa'

    # @toolBar.addSpacer()
  #
    # @toolBar.addButton
    #   'icon': 'code-branch'
    #   'callback': 'github:toggle-github-tab'
    #   'tooltip': 'Toggle GitHub Tab'
    #   'iconset': 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      'icon': 'palette'
      'callback': 'command-palette:toggle'
      'tooltip': 'Toggle Command Palette'
      'iconset': 'fa'
