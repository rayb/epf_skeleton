App.FoosNewRoute = Ember.Route.extend

  model: ->
    @session.create App.Foo

  events:

    cancel: ->
      @controllerFor('foosNew').transitionToFoos()



