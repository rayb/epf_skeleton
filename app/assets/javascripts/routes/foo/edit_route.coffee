App.FooEditRoute = Ember.Route.extend

  model: ->
    @modelFor "foo"

#alternative way
#  afterModel: (model, transition) ->
#    childSession = @session.newSession()
#    childModel = childSession.add(model)
#    transition.resolvedModels['foo'] = childModel

  setupController: (controller, model) ->
    childSession = @session.newSession()
    childModel = childSession.add(model)
    controller.set('model', childModel)


#  deactivate: ->
##    alert 'we are in deactivate on foo edit route'
#    fooEdit = @controllerFor('fooEdit')
#    fooEdit.stopEditing()
#    model = @currentModel
#    model.get("transaction").rollback()  unless model.get("isSaving")

#  renderTemplate: ->
#    @render "foo.edit"
#      outlet: "main"

