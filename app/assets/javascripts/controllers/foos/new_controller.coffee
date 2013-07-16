App.FoosNewController = Ember.ObjectController.extend
  needs: ['foos']

  save: ->
    controller = this
    @session.flush().then ->
      foo = controller.get('content')
      controller.get('controllers.foos').content.pushObject(foo)
      controller.transitionToRoute "foo", foo

  cancel: ->
    @transitionToRoute "foos"


# QUESTION FOR GORDON
#      @childSession.flush().then ((foo) ->
#        # this will be reached if the flush is successful
#        # why will alert work to show object, but get id is undefined
#        alert foo
#      ), (foo) ->
#        alert 'something went wrong'
#        foo.get('errors')

