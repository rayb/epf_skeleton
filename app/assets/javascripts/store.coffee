# App.Store = Ember.Store.extend
#   adapter: Ember.RESTAdapter
#   namespace: 'api'

App.Adapter = Ep.RestAdapter.extend
  namespace: 'api'

App.Adapter.configure 'plurals',
  'foo': 'foos'

