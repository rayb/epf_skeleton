App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'foos', path: '/', ->
    @route 'new',
    @resource 'foo', path: ':foo_id', ->
      @route 'index'
      @route 'edit'

