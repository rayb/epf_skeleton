App.Router.reopen
  location: 'history'
  rootURL: '/foos'

App.Router.map ->
  @resource 'foos', path: '/', ->
    @resource 'foo', path: '/:foo_id'
