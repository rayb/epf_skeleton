App.FoosRoute = Ember.Route.extend

  model: ->
    @session.load('foo', "1")
