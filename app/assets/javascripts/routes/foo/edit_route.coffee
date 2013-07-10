App.FooEditRoute = Ember.Route.extend

  model: ->
    @modelFor "foo"

#  deactivate: ->
#    model = @currentModel
#    model.get("transaction").rollback()  unless model.get("isSaving")

#  renderTemplate: ->
#    @render "foo.edit"
#      outlet: "main"

