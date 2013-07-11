App.FoosNewRoute = Ember.Route.extend

  model: ->
    @session.create App.Foo
