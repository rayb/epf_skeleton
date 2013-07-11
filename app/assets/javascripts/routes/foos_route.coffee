App.FoosRoute = Ember.Route.extend

  model: ->
    @session.query App.Foo

