ViewFinderView = require './view-finder-view'

module.exports =
  activate: (state) ->
    atom.workspaceView.command 'rails-everywhere-door:toggle-view-finder', =>
      @createViewFinderView().toggle()

  deactivate: ->
    if @viewFinderView?
      @viewFinderView.destroy()
      
  createViewFinderView: ->
    unless @viewFinderView?
      @viewFinderView = new ViewFinderView()
      
    @viewFinderView
