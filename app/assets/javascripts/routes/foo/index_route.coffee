App.FooIndexRoute = Ember.Route.extend
  
  model: ->
#    @modelFor "foo"
    foo = @modelFor "foo"
    # THIS IS A HACK TO SET SELECTION EACH TIME
    # COULD YOU ALSO DO THIS AS AN OBSERVER
    foos = @controllerFor('foos')
    foos.set('active_foo_id', foo.id)
    foo

