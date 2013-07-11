App.FoosNewController = Ember.ObjectController.extend

  transitionToFoos: ->
    @transitionToRoute "foos"

  transition_after_save: ( ->
    @transitionToRoute "foo", @get("content")  if @get("content.id")
  ).observes("content.id")

