App.FoosNewRoute = Ember.Route.extend

  model: ->
    @session.create App.Foo

#  deactivate: ->
#    model = @currentModel
#    model.get("transaction").rollback()  unless model.get("isSaving")

