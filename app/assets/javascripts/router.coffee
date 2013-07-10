App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'foos', path: '/', ->
#  @resource 'foo', path: '/:foo_id'
  @resource 'foo', path: ':foo_id', ->
    @route 'index'

