App.FooEditRoute = Ember.Route.extend

  model: ->
    foo = @modelFor "foo"
    fooEdit = @controllerFor('fooEdit')
    fooEdit.adoptFoo(foo)
    foo

  deactivate: ->
#    alert 'we are in deactivate on foo edit route'
    fooEdit = @controllerFor('fooEdit')
    fooEdit.stopEditing()
#    model = @currentModel
#    model.get("transaction").rollback()  unless model.get("isSaving")

#  renderTemplate: ->
#    @render "foo.edit"
#      outlet: "main"

