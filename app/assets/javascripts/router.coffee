App.Router.reopen
  location: 'history'
  #rootURL: '/1'

App.Router.map ->
  @resource 'foos', path: '/', ->
  #@resource 'foo', path: '/:foo_id'
