App.FooEditRoute = Ember.Route.extend

  model: ->
    @modelFor "foo"

    # alternative way
# TODO: Question: why doesn't it work with Ember-1.0.0.rc.6?
#  afterModel: (model, transition) ->
#    childSession = @session.newSession()
#    childModel = childSession.add(model)
#    transition.resolvedModels['foo'] = childModel

  setupController: (controller, model) ->
    childSession = @session.newSession()
    childModel = childSession.add(model)
    controller.set('model', childModel)

# probably take this out
#  renderTemplate: ->
#    @render "foo.edit"
#      outlet: "main"

