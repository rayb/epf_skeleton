App.FoosNewController = Ember.ObjectController.extend

  transitionToFoos: ->
    @transitionToRoute "foos"

  transition_after_save: ( ->
    @transitionToRoute "foo", @get("content")  if @get("content.id")
  ).observes("content.id")

  save: ->
    @session.flush()

# QUESTION FOR GORDON
#      @childSession.flush().then ((foo) ->
#        # this will be reached if the flush is successful
#        # why will alert work to show object, but get id is undefined
#        alert foo
#      ), (models) ->
#        alert 'something went wrong'
