App.FoosNewRoute = Ember.Route.extend

  model: ->
    @session.create App.Foo

  events:

    cancel: ->
      @controllerFor('foosNew').transitionToFoos()

    save: ->
      @session.flush()


# QUESTION FOR GORDON
#      @childSession.flush().then ((foo) ->
#        # this will be reached if the flush is successful
#        # why will alert work to show object, but get id is undefined
#        alert foo.id
#      ), (models) ->
#        alert 'something went wrong'

