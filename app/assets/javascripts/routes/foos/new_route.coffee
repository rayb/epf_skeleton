App.FoosNewRoute = Ember.Route.extend

  model: ->
    foo = @session.create App.Foo
    foo
#  deactivate: ->
#    model = @currentModel
#    model.get("transaction").rollback()  unless model.get("isSaving")


  events:
    save: ->
      promise = @session.flush()
      promise.then (foo) ->
        @transitionToRoute "foo", 34
      promise