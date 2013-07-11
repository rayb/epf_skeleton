App.FoosNewRoute = Ember.Route.extend

#  init: ->
#    alert 'init foos route'
#    @childSession = @session.newSession()

  model: ->
#    @childSession = @session.newSession()
    foo = @session.create App.Foo
    foo
#  deactivate: ->
#    model = @currentModel
#    model.get("transaction").rollback()  unless model.get("isSaving")


  events:
    save: ->
      promise = @session.flush()
      promise.then (foo) ->
        debugger
#        alert foo
#        @transitionToRoute "foo", foo
        @transitionToRoute "foos"
      promise