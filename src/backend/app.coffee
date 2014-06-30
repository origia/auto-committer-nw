app           = require 'app'
BrowserWindow = require 'browser-window'

exports.init = (onReady) ->
  require('crash-reporter').start()
  mainWindow = null

  app.on 'window-all-closed', ->
    unless process.platform == 'darwin'
      app.quit()

  app.on 'ready', ->
    mainWindow = new BrowserWindow({width: 1000, height: 750, resizable: false})

    mainWindow.loadUrl('file://' + __dirname + '/../../html/layouts/app.html')
    mainWindow.toggleDevTools()

    mainWindow.on 'closed', ->
      mainWindow = null

    onReady mainWindow

    require('./menu').initMenu(app)
