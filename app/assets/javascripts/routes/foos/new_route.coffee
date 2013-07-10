App.FoosNewRoute = Ember.Route.extend

  model: ->
    @session.create App.Foo

#  deactivate: ->
#    model = @currentModel
#    model.get("transaction").rollback()  unless model.get("isSaving")

  transition_after_save: ( ->
    console.log 'transitionAfterSave'
    @transitionToRoute "foo", @get("content")  if @get("content.id")
  ).observes("content.id")

  events:

    save: ->
      @session.flush()

