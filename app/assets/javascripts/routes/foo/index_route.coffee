App.FooIndexRoute = Ember.Route.extend
  
  model: ->
    foo = @modelFor "foo"
    foos = @controllerFor('foos')
    foos.set('active_foo_id', foo.id)
    foo

